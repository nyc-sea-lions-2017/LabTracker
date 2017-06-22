class ExperimentsController < ApplicationController
  def index
    @experiments = Experiment.all
  end

  def show
    @proposal = Proposal.find_by(id: params[:id])
    @experiment = Experiment.find_by(id:params[:id])
  end

  def new
    @proposal = Proposal.find_by(id: params[:id])
    @experiment = Experiment.new
  end

  def create
    @proposal = Proposal.find_by(id: params[:id])
    @experiment = Experiment.new(experiment_params)
    @experiment.save
    redirect_to [:proposal,@experiment]
  end


  def destroy
  end

  def edit
  end

  def update
  end

  private

  def experiment_params
    a = params.require(:experiment).permit(:results,:conclusions)
    a[:proposal] = Proposal.last
    a[:experimenter_id] = 1
    a

  end
end
