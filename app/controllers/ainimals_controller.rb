class AinimalsController < ApplicationController
  before_action :set_ainimal, only: %i[ show edit update destroy ]

  # GET /ainimals or /ainimals.json
  def index
    @ainimals = Ainimal.all
  end

  # GET /ainimals/1 or /ainimals/1.json
  def show
  end

  # GET /ainimals/new
  def new
    @ainimal = Ainimal.new
  end

  # GET /ainimals/1/edit
  def edit
  end

  # POST /ainimals or /ainimals.json
  def create
    @ainimal = Ainimal.new(ainimal_params)

    respond_to do |format|
      if @ainimal.save
        format.html { redirect_to ainimal_url(@ainimal), notice: "Ainimal was successfully created." }
        format.json { render :show, status: :created, location: @ainimal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ainimal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ainimals/1 or /ainimals/1.json
  def update
    respond_to do |format|
      if @ainimal.update(ainimal_params)
        format.html { redirect_to ainimal_url(@ainimal), notice: "Ainimal was successfully updated." }
        format.json { render :show, status: :ok, location: @ainimal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ainimal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ainimals/1 or /ainimals/1.json
  def destroy
    @ainimal.destroy

    respond_to do |format|
      format.html { redirect_to ainimals_url, notice: "Ainimal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ainimal
      @ainimal = Ainimal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ainimal_params
      params.require(:ainimal).permit(:name, :class, :image, :desc)
    end
end
