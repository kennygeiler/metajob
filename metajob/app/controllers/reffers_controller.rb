class ReffersController < ApplicationController
  before_action :set_reffer, only: [:show, :edit, :update, :destroy]

  # GET /reffers
  # GET /reffers.json
  def index
    @reffers = Reffer.all
  end

  # GET /reffers/1
  # GET /reffers/1.json
  def show
  end

  # GET /reffers/new
  def new
    @reffer = Reffer.new
  end

  # GET /reffers/1/edit
  def edit
  end

  # POST /reffers
  # POST /reffers.json
  def create
    @reffer = Reffer.new(reffer_params)

    respond_to do |format|
      if @reffer.save
        format.html { redirect_to @reffer, notice: 'Reffer was successfully created.' }
        format.json { render :show, status: :created, location: @reffer }
      else
        format.html { render :new }
        format.json { render json: @reffer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reffers/1
  # PATCH/PUT /reffers/1.json
  def update
    respond_to do |format|
      if @reffer.update(reffer_params)
        format.html { redirect_to @reffer, notice: 'Reffer was successfully updated.' }
        format.json { render :show, status: :ok, location: @reffer }
      else
        format.html { render :edit }
        format.json { render json: @reffer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reffers/1
  # DELETE /reffers/1.json
  def destroy
    @reffer.destroy
    respond_to do |format|
      format.html { redirect_to reffers_url, notice: 'Reffer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_reffer
    @reffer = Reffer.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def reffer_params
    params.require(:reffer).permit(:ref_code, :invite_code, user_attributes: [ :id, :email, :password ])
  end
end
