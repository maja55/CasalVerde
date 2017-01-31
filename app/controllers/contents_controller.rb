class ContentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  def index
    @contents = Content.all
    render status: 200, json: contents
  end


  def create
    @content = Content.new
    if @content.save
      render status: 201, json: {
        message: "Content saved",
        room: room
      }.to_json
    else
      render status: 422, json: {
        errors: content.errors
      }.to_json
    end
  end

  def update
    @content = Content.find(params[:id])
    if content.update(content_params)
      render status: 200, json: {
        message: "Content updated",
        content: content
      }.to_json
    else
       render status: 422, json: {
        message: "The content could not be updated",
        errors: content.errors
      }.to_json
    end
  end

  def destroy
    content = Content.find(params[:id])
    content.destroy

    render status: 200, json: {
      message: "Content deleted"
    }.to_json
  end

  private

  def content_params
    params.require(:content).permit(:title, :paragraph, :list)
  end

end
