class MytablesController < ApplicationController
  before_action :set_mytable, only: [:show, :edit, :update, :destroy]

  # GET /mytables
  # GET /mytables.json
  def index
    @mytables = Mytable.all
  end

  # GET /mytables/1
  # GET /mytables/1.json
  def show
  end

  # GET /mytables/new
  def new
    @mytable = Mytable.new
  end

  # GET /mytables/1/edit
  def edit
  end

  # POST /mytables
  # POST /mytables.json
  def create
    @mytable = Mytable.new(mytable_params)

    respond_to do |format|
      if @mytable.save
        format.html { redirect_to @mytable, notice: 'Mytable was successfully created.' }
        format.json { render :show, status: :created, location: @mytable }
      else
        format.html { render :new }
        format.json { render json: @mytable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mytables/1
  # PATCH/PUT /mytables/1.json
  def update
    respond_to do |format|
      if @mytable.update(mytable_params)
        format.html { redirect_to @mytable, notice: 'Mytable was successfully updated.' }
        format.json { render :show, status: :ok, location: @mytable }
      else
        format.html { render :edit }
        format.json { render json: @mytable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mytables/1
  # DELETE /mytables/1.json
  def destroy
    @mytable.destroy
    respond_to do |format|
      format.html { redirect_to mytables_url, notice: 'Mytable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytable
      @mytable = Mytable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mytable_params
      params.require(:mytable).permit(:name, :email)
    end
end
