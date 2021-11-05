class ContentsController < ApplicationController
  before_action :set_content, only: %i[show edit update destroy delete]

  def index
    @contents = Content.all
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to contents_path, notice: 'Content created successfully'
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @content.update(content_params)
      redirect_to @content, notice: 'Content updated successfully'
    else
      render :edit
    end 
  end

  def delete; end

  def destroy
    @content.destroy
    redirect_to contents_path, notice: "Content #{@content.name} deleted successfully"
  end

  private

  def set_content
    @content = Content.find(params[:id])
  end

  def content_params
    params.require(:content).permit(:name, :description, :certificate, :genre,
                                    :types, :with_seasons)
  end
end
