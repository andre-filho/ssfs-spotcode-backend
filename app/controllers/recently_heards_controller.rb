class RecentlyHeardsController < ApplicationController
  before_action :set_recently_heard, only: [:show, :update, :destroy]

  # GET /recently_heards
  def index
    @recently_heards = RecentlyHeard.all

    render json: @recently_heards
  end

  # GET /recently_heards/1
  def show
    render json: @recently_heard
  end

  # POST /recently_heards
  def create
    @recently_heard = RecentlyHeard.new(recently_heard_params)

    if @recently_heard.save
      render json: @recently_heard, status: :created, location: @recently_heard
    else
      render json: @recently_heard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recently_heards/1
  def update
    if @recently_heard.update(recently_heard_params)
      render json: @recently_heard
    else
      render json: @recently_heard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recently_heards/1
  def destroy
    @recently_heard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recently_heard
      @recently_heard = RecentlyHeard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recently_heard_params
      params.require(:recently_heard).permit(:user_id, :album_id)
    end
end
