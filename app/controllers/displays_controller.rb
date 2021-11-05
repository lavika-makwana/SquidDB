class DisplaysController < ApplicationController
  def home_page
    @content_types = Content.pluck(:types).uniq
  end

  def display_type_content
    @type_lists = Content.where(types: params[:id])
  end
end
