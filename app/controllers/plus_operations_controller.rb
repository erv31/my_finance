class PlusOperationsController < ApplicationController
  before_action :set_plus_operation, only: [:show, :edit, :update, :destroy]

  # GET /plus_operations
  # GET /plus_operations.json
  def index
    @plus_operations = PlusOperation.all
  end

  # GET /plus_operations/1
  # GET /plus_operations/1.json
  def show
  end

  # GET /plus_operations/new
  def new
    @plus_operation = PlusOperation.new
  end

  # GET /plus_operations/1/edit
  def edit
  end

  # POST /plus_operations
  # POST /plus_operations.json
  def create
    @plus_operation = PlusOperation.new(plus_operation_params)

    respond_to do |format|
      if @plus_operation.save
        format.html { redirect_to @plus_operation, notice: 'Plus operation was successfully created.' }
        format.json { render :show, status: :created, location: @plus_operation }
      else
        format.html { render :new }
        format.json { render json: @plus_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plus_operations/1
  # PATCH/PUT /plus_operations/1.json
  def update
    respond_to do |format|
      if @plus_operation.update(plus_operation_params)
        format.html { redirect_to @plus_operation, notice: 'Plus operation was successfully updated.' }
        format.json { render :show, status: :ok, location: @plus_operation }
      else
        format.html { render :edit }
        format.json { render json: @plus_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plus_operations/1
  # DELETE /plus_operations/1.json
  def destroy
    @plus_operation.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Plus operation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plus_operation
      @plus_operation = PlusOperation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plus_operation_params
      params.require(:plus_operation).permit(:title, :description, :sum)
    end
end
