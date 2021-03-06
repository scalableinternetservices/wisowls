class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]
  

  # GET /dogs
  # GET /dogs.json
  def index
    @dogs = Dog.all
  end

  # GET /dogs/1
  # GET /dogs/1.json
  def show
  end

  # GET /dogs/new
  def new
    @dog = Dog.new
  end

  # GET /dogs/1/edit
  def edit
    begin
      @user = User.find(params[:id])
      if current_user.id != @user.id
        redirect_to "/dogs/" + (current_user.id).to_s + "/edit?commit=Edit+Profile"
      end
    rescue ActiveRecord::RecordNotFound => e
      print e
    end
  end

  # POST /dogs
  # POST /dogs.json
  def create
    @dog = Dog.new(dog_params)

    respond_to do |format|
      if @dog.save
        format.html { redirect_to '/users/' + (current_user.id).to_s, notice: 'Dog was successfully created.' }
        format.json { render :show, status: :created, location: @dog }
      else
        format.html { render :new }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dogs/1
  # PATCH/PUT /dogs/1.json
  def update
    respond_to do |format|
      if @dog.update(dog_params)
        format.html { redirect_to '/users/' + (current_user.id).to_s, notice: 'Dog was successfully updated.' }
        format.json { render :show, status: :ok, location: @dog }
      else
        format.html { render :edit }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dogs/1
  # DELETE /dogs/1.json
  def destroy
    @dog.destroy
    respond_to do |format|
      format.html { redirect_to dogs_url, notice: 'Dog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog
      begin
        @dog = Dog.find(params[:id])
      rescue StandardError => e
        new
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dog_params

      params.require(:dog).permit(:name, :age, :gender, :breed, :weight, :zipcode, :playful, :energetic, :friendly, :calm, :affectionate, :cuddly, :intelligent, :curious, :sassy, :child_friendly, :cat_friendly, :likes_small_dogs, :likes_big_dogs, :likes_puppies, :likes_soul_mate, :likes_younger_dogs, :likes_older_dogs, dog_images: [])
    end
end
