class ExperimentsController < ApplicationController
  def index
    @experiments = Experiment.all
  end

  def show
    # byebug
    @experiment = Experiment.find_by(id:params[:id])
    render "show"
  end

  def new
    @experiment = Experiment.new
  end

  def create
    @experiment = Experiment.new(experiment_params)
    @experiment.save
    redirect_to @experiment
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
