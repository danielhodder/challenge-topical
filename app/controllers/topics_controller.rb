class TopicsController < ApplicationController
  def index
    @topics = Topic.includes(:created_by_user)
  end

  def new
    @topic = Topic.new()
  end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save()
      redirect_to(@topic)
    else
      render('new')
    end
  end

  def show
  end

  private

  def topic_params
    params.require(:topic).permit(:name)
  end
end