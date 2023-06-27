class TherapistsController < ApplicationController
  before_action :set_therapist, only: %i[show edit update destroy]

  def index
    @therapists = Therapist.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  def new
    @therapist = Therapist.new
  end

  def show; end

  def edit; end

  def create
    @therapist = Therapist.new(therapist_params)

    respond_to do |format|
      if @therapist.save
        format.html { redirect_to therapist_path(@therapist), notice: 'Therapist was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @therapist.update(therapist_params)
        format.html { redirect_to therapist_path(@therapist), notice: 'Therapist was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @therapist.destroy

    respond_to do |format|
      format.html { redirect_to therapists_path, notice: 'Therapist was successfully destroyed.' }
    end
  end

  private

  def set_therapist
    @therapist = Therapist.find(params[:id])
  end

  def therapist_params
    params.require(:therapist).permit(:name, :email)
  end
end
