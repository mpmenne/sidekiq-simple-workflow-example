class FourStepRunsController < ApplicationController
  before_action :set_four_step_run, only: %i[ show edit update destroy ]

  def index
    @four_step_runs = FourStepRun.all
  end

  def show; end

  def new
    @four_step_run = FourStepRun.new
  end

  def edit; end

  def create
    @four_step_run = FourStepRun.new(four_step_run_params)
    FourStepWorkflow.perform_async
    ExampleWorker.perform_async

    respond_to do |format|
      if @four_step_run.save
        format.html {
          redirect_to @four_step_run, notice: "Four step run was created."
        }
        format.json { 
          render :show, status: :created, location: @four_step_run
        }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { 
          render json: @four_step_run.errors, status: :unprocessable_entity
        }
      end
    end
  end

  # PATCH/PUT /four_step_runs/1 or /four_step_runs/1.json
  def update
    respond_to do |format|
      if @four_step_run.update(four_step_run_params)
        format.html {
          redirect_to @four_step_run, notice: "Four step run was updated."
        }
        format.json { render :show, status: :ok, location: @four_step_run }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { 
          render json: @four_step_run.errors, status: :unprocessable_entity
        }
      end
    end
  end

  # DELETE /four_step_runs/1 or /four_step_runs/1.json
  def destroy
    @four_step_run.destroy
    respond_to do |format|
      format.html { redirect_to four_step_runs_url, notice: "Four step run was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_four_step_run
      @four_step_run = FourStepRun.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def four_step_run_params
      params.fetch(:four_step_run, {})
    end
end
