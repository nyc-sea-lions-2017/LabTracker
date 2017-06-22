class ExperimentsController < ApplicationController
  before_action :authenticate_user!


  def index
    @proposal = Proposal.find_by(id: params[:proposal_id].to_i)
    @experiment = @proposal.experiment

  end

  def show
    @proposal = Proposal.find_by(id: params[:proposal_id].to_i)
    @experiment = Experiment.find_by(id:params[:id])
  end

  def new
    @proposal = Proposal.find_by(id: params[:id])
    @experiment = Experiment.new
    
  end

  def create
    @proposal = Proposal.find_by(id: params[:proposal_id].to_i)
    @experiment = Experiment.new(experiment_params)
    @proposal.update(status: "in progress")
    @experiment.save

    redirect_to proposal_experiment_path(@proposal,@experiment)
  end


  def destroy
    @proposal = Proposal.find_by(id: params[:proposal_id].to_i)
    if current_user.id == @proposal.user.id
      @experiment = @proposal.experiment
      @experiment.destroy
      redirect_to @proposal
    else
      redirect_to @proposal
    end
  end

  def edit
    @proposal = Proposal.find_by(id: params[:proposal_id].to_i)
    @experiment = @proposal.experiment
  end

  def update
    @proposal = Proposal.find_by(id: params[:proposal_id].to_i)
    @experiment = @proposal.experiment
    if current_user.id == @experiment.experimenter_id
      @experiment.update_attributes(experiment_params)
      redirect_to proposal_experiment_path(@proposal,@experiment)
    else
      redirect_to proposal_experiment_path(@proposal,@experiment)
    end
  end

  private

  def experiment_params
    a = params.require(:experiment).permit(:results,:conclusions)
    a[:proposal] = Proposal.find_by(id: params[:proposal_id].to_i)
    a[:experimenter_id] = current_user.id
    a
  end

end
