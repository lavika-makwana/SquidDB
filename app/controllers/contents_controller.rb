class ContentsController < ApplicationController

  def index
    @contents = Content.all
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      flash[:notice] = "content created successfully"
      redirect_to(contents_path)
    else
      render('new')
    end
  end

  def show
    @content = Content.find(params[:id])
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    if @content.update(content_params)
      flash[:notice] = "content updated successfully"
      redirect_to(content_path(@content))
    else
      render('edit')
    end 
  end

  def delete
    @content = Content.find(params[:id])
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    flash[:notice] = "content '#{@content.name}'deleted successfully"
    redirect_to(contents_path)
  end

  private

  def content_params
    params.require(:content).permit(:name, :description, :certificate, :genre, :type, :with_seasons)
  end
end
