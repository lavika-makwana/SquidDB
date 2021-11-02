class DisplaysController < ApplicationController
  def home_page
  end

  def list_of_a_single_type_content
    @type_lists = Content.where(types: params[:types])
  end
end
