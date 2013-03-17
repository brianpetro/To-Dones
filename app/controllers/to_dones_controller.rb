class ToDonesController < ApplicationController
  before_action :set_to_done, only: [:show, :edit, :update, :destroy]

  # GET /to_dones
  # GET /to_dones.json
  def index
    @to_dones = ToDone.all
  end

  # GET /to_dones/1
  # GET /to_dones/1.json
  def show
  end

  # GET /to_dones/new
  def new
    @to_done = ToDone.new
  end

  # GET /to_dones/1/edit
  def edit
  end

  # POST /to_dones
  # POST /to_dones.json
  def create
    @to_done = ToDone.new(to_done_params)

    respond_to do |format|
      if @to_done.save
        format.html { redirect_to @to_done, notice: 'To done was successfully created.' }
        format.json { render action: 'show', status: :created, location: @to_done }
      else
        format.html { render action: 'new' }
        format.json { render json: @to_done.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /to_dones/1
  # PATCH/PUT /to_dones/1.json
  def update
    respond_to do |format|
      if @to_done.update(to_done_params)
        format.html { redirect_to @to_done, notice: 'To done was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @to_done.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /to_dones/1
  # DELETE /to_dones/1.json
  def destroy
    @to_done.destroy
    respond_to do |format|
      format.html { redirect_to to_dones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_to_done
      @to_done = ToDone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def to_done_params
      params[:to_done]
    end
end
