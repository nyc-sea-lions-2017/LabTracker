class ExperimentsController < ApplicationController
  def index
    @experiments = Experiment.all
  end

  def show
    @experiment = Experiment.find_by(id:experiment_params)
  end

  def find
    @experiment = Experiment.find(experiment_params)
  end

  def new
    @experiment = Experiment.new
  end

  def create
    @experiment = Experiment.new(experiment_params)
    if @experiment.save
      redirect_to experiments_path(@experiment)
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def experiment_params

  end
end
