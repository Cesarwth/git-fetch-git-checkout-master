class Manager::RotatingImagesController < ApplicationController
  before_action :set_rotating_image, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /rotating_images
  # GET /rotating_images.json
  def index
    @rotating_images = RotatingImage.all
  end

  # GET /rotating_images/1
  # GET /rotating_images/1.json
  def show
  end

  # GET /rotating_images/new
  def new
    @rotating_image = RotatingImage.new
  end

  # GET /rotating_images/1/edit
  def edit
  end

  # POST /rotating_images
  # POST /rotating_images.json
  def create
    @rotating_image = RotatingImage.new(rotating_image_params)

    respond_to do |format|
      if @rotating_image.save
        format.html { redirect_to manager_rotating_images_path, notice: 'Rotating image was successfully created.' }
        format.json { render :show, status: :created, location: @rotating_image }
      else
        format.html { render :new }
        format.json { render json: @rotating_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rotating_images/1
  # PATCH/PUT /rotating_images/1.json
  def update
    respond_to do |format|
      if @rotating_image.update(rotating_image_params)
        format.html { redirect_to manager_rotating_images_path, notice: 'Rotating image was successfully updated.' }
        format.json { render :show, status: :ok, location: @rotating_image }
      else
        format.html { render :edit }
        format.json { render json: @rotating_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rotating_images/1
  # DELETE /rotating_images/1.json
  def destroy
    @rotating_image.destroy
    respond_to do |format|
      format.html { redirect_to manager_rotating_images_path, notice: 'Rotating image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rotating_image
      @rotating_image = RotatingImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rotating_image_params
      params.require(:rotating_image).permit(:name, :position, :rotating_file)
    end
end
