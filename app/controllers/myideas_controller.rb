class MyideasController < ApplicationController
  before_action :set_myidea, only: [:show, :edit, :update, :destroy]

  # GET /myideas
  # GET /myideas.json
  def index
    @myideas = Myidea.all
  end

  # GET /myideas/1
  # GET /myideas/1.json
  def show
  end

  # GET /myideas/new
  def new
    @myidea = Myidea.new
  end

  # GET /myideas/1/edit
  def edit
  end

  # POST /myideas
  # POST /myideas.json
  def create
    @myidea = Myidea.new(myidea_params)

    respond_to do |format|
      if @myidea.save
        format.html { redirect_to @myidea, notice: 'Myidea was successfully created.' }
        format.json { render :show, status: :created, location: @myidea }
      else
        format.html { render :new }
        format.json { render json: @myidea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myideas/1
  # PATCH/PUT /myideas/1.json
  def update
    respond_to do |format|
      if @myidea.update(myidea_params)
        format.html { redirect_to @myidea, notice: 'Myidea was successfully updated.' }
        format.json { render :show, status: :ok, location: @myidea }
      else
        format.html { render :edit }
        format.json { render json: @myidea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myideas/1
  # DELETE /myideas/1.json
  def destroy
    @myidea.destroy
    respond_to do |format|
      format.html { redirect_to myideas_url, notice: 'Myidea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myidea
      @myidea = Myidea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myidea_params
      params.require(:myidea).permit(:name, :description, :picture)
    end
end
