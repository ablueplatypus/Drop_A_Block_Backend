class Api::V1::StatsController < ApplicationController

  def index
    @stats = Stat.all
    render json: @stats
  end

  def create
    @stat = Stat.create(stat_params)
    render json: @stat, status: :created
  end

  # find or create by user. Set this to a variable
  # stat.create with a the three params i need to create (high_score, line_clear, user_id)
  # find or create by User

  private

  def stat_params
    params.permit(:high_score, :line_clear, :initials)
  end

end
