class SessionsController < ApplicationController
  before_action :set_session, only: %i[show edit update destroy]

  def index
    @sessions = Session.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  def new
    @session = Session.new
  end

  def show; end

  def edit; end

  def create
    @session = Session.new(session_params)

    respond_to do |format|
      if @session.save
        format.html { redirect_to session_path(@session), notice: 'Session was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @session.update(session_params)
        format.html { redirect_to session_path(@session), notice: 'Session was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @session.destroy

    respond_to do |format|
      format.html { redirect_to sessions_path, notice: 'Session was successfully destroyed.' }
    end
  end

  private

  def set_session
    @session = Session.find(params[:id])
  end

  def session_params
    params.require(:session).permit(:title, :start_time, :end_time, :client_email, :therapist_id)
  end
end
