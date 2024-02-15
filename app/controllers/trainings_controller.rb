class TrainingsController < ApplicationController
  before_action :set_training, only: %i[ show edit update destroy ]
  before_action :set_categories_and_crops, only: %i[new edit create update]
  before_action :check_admin
  # GET /trainings or /trainings.json
  def index
    @trainings = Training.all
    @trainings = @trainings.where("title LIKE ?", "%#{params[:title]}%") if params[:title].present?
    @trainings = @trainings.where(crop_id: params[:crop_id]) if params[:crop_id].present?
    @trainings = @trainings.where(category_id: params[:category_id]) if params[:category_id].present?
  end

  # GET /trainings/1 or /trainings/1.json
  def show
  end

  # GET /trainings/new
  def new
    @training = Training.new
    @categories = Category.all
    @crops = Crop.all  
  end

  # GET /trainings/1/edit
  def edit
    @categories = Category.all
    @crops = Crop.all  
  end

  # POST /trainings or /trainings.json
  def create
    @training = Training.new(training_params)

    respond_to do |format|
      if @training.save
        format.html { redirect_to training_url(@training), notice: "トレーニングデータを登録しました" }
        format.json { render :show, status: :created, location: @training }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @training.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trainings/1 or /trainings/1.json
  def update
    respond_to do |format|
      if @training.update(training_params)
        format.html { redirect_to training_url(@training), notice: "トレーニングデータを更新しました" }
        format.json { render :show, status: :ok, location: @training }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @training.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trainings/1 or /trainings/1.json
  def destroy
    @training.destroy

    respond_to do |format|
      format.html { redirect_to trainings_url, notice: "トレーニングデータを削除しました" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training
      @training = Training.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def training_params
      params.require(:training).permit(:title, :content, :category_id, :crop_id)
    end

    def set_categories_and_crops
      @categories = Category.all
      @crops = Crop.all  
    end

end