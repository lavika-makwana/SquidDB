class DisplaysController < ApplicationController
  def home_page
  end

  def display_type_content
    @type_lists = Content.where(types: params[:types])
  end
end
