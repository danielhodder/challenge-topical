class TopicsController < ApplicationController
  def index
    @topics = Topic.includes(:created_by_user)
  end

  def new
    @topic = Topic.new()
  end

  private

  def topic_params
    params.require(:topic)
  end
end