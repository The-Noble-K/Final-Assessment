class DMsController < ApplicationController
  before_action :set_dm, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /dms
  # GET /dms.json
  def index
    @dms = Dm.all
  end

  # GET /dms/1
  # GET /dms/1.json
  def show
  end

  # GET /dms/new
  def new
    @dm = Dm.new
  end

  # GET /dms/1/edit
  def edit
  end

  # POST /dms
  # POST /dms.json
  def create
    @dm = Dm.new(dm_params)

    respond_to do |format|
      if @dm.save
        format.html { redirect_to @dm, notice: 'Dm was successfully created.' }
        format.json { render :show, status: :created, location: @dm }
      else
        format.html { render :new }
        format.json { render json: @dm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dms/1
  # PATCH/PUT /dms/1.json
  def update
    respond_to do |format|
      if @dm.update(dm_params)
        format.html { redirect_to @dm, notice: 'Dm was successfully updated.' }
        format.json { render :show, status: :ok, location: @dm }
      else
        format.html { render :edit }
        format.json { render json: @dm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dms/1
  # DELETE /dms/1.json
  def destroy
    @dm.destroy
    respond_to do |format|
      format.html { redirect_to dms_url, notice: 'Dm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dm
      @dm = Dm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dm_params
      params.require(:dm).permit(:message, :user_id)
    end
end
