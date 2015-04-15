class PerceptronsController < ApplicationController
  before_action :set_perceptron, only: [:show, :edit, :update, :destroy]

  
## Implementing ANN using Perceptron model for calculating risks of having Diabete-------------------##
  def risk_of_diabete

    sum = 0.0
    @output = 0

    # Decide later what should be inputs
    input = [params[:age], params[:height], params[:weight]]

    # According to the example : expert_weight should be between -1 and 1
    expert_weight = [0.1, 0.2, 0.3]


    for i in 0..(input.length-1)
      sum += input.at(i).to_f*expert_weight.at(i).to_f
    end

    @output = activate(sum)

  end

  def activate(sum)
    if sum > 0
      activated_output = 1
    else
      activated_output = -1
    end

    return activated_output
  end




##--------------------------------------------------------------------------------------------------##


## Below: From scaffolding, do not care

  # GET /perceptrons
  # GET /perceptrons.json
  def index
    @perceptrons = Perceptron.all
  end

  # GET /perceptrons/1
  # GET /perceptrons/1.json
  def show
  end

  # GET /perceptrons/new
  def new
    @perceptron = Perceptron.new
  end

  # GET /perceptrons/1/edit
  def edit
  end

  # POST /perceptrons
  # POST /perceptrons.json
  def create
    @perceptron = Perceptron.new(perceptron_params)

    respond_to do |format|
      if @perceptron.save
        format.html { redirect_to @perceptron, notice: 'Perceptron was successfully created.' }
        format.json { render :show, status: :created, location: @perceptron }
      else
        format.html { render :new }
        format.json { render json: @perceptron.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perceptrons/1
  # PATCH/PUT /perceptrons/1.json
  def update
    respond_to do |format|
      if @perceptron.update(perceptron_params)
        format.html { redirect_to @perceptron, notice: 'Perceptron was successfully updated.' }
        format.json { render :show, status: :ok, location: @perceptron }
      else
        format.html { render :edit }
        format.json { render json: @perceptron.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perceptrons/1
  # DELETE /perceptrons/1.json
  def destroy
    @perceptron.destroy
    respond_to do |format|
      format.html { redirect_to perceptrons_url, notice: 'Perceptron was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perceptron
      @perceptron = Perceptron.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perceptron_params
      params[:perceptron]
    end
end
