class MinusOperationsController < ApplicationController
  before_action :set_minus_operation, only: [:show, :edit, :update, :destroy]

  # GET /minus_operations
  # GET /minus_operations.json
  def index
    @minus_operations = MinusOperation.all
  end

  # GET /minus_operations/1
  # GET /minus_operations/1.json
  def show
  end

  # GET /minus_operations/new
  def new
    @minus_operation = MinusOperation.new
  end

  # GET /minus_operations/1/edit
  def edit
  end

  # POST /minus_operations
  # POST /minus_operations.json
  def create
    @minus_operation = MinusOperation.new(minus_operation_params)

    respond_to do |format|
      if @minus_operation.save
        format.html { redirect_to @minus_operation, notice: 'Minus operation was successfully created.' }
        format.json { render :show, status: :created, location: @minus_operation }
      else
        format.html { render :new }
        format.json { render json: @minus_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minus_operations/1
  # PATCH/PUT /minus_operations/1.json
  def update
    respond_to do |format|
      if @minus_operation.update(minus_operation_params)
        format.html { redirect_to @minus_operation, notice: 'Minus operation was successfully updated.' }
        format.json { render :show, status: :ok, location: @minus_operation }
      else
        format.html { render :edit }
        format.json { render json: @minus_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minus_operations/1
  # DELETE /minus_operations/1.json
  def destroy
    @minus_operation.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Minus operation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minus_operation
      @minus_operation = MinusOperation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minus_operation_params
      params.require(:minus_operation).permit(:title, :description, :sum)
    end
end
