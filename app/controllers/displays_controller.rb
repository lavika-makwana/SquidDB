class DisplaysController < ApplicationController
  def home_page
    @content_types = Content.pluck(:content_type).uniq
  end

  def display_type_content
    @type_lists = Content.where(content_type: params[:id])
  end
end
