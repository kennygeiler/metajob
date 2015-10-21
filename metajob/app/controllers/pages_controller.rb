class PagesController < ApplicationController
  def show
    if current_user || current_company
      redirect_to jobs_path
    else
      render template: "pages/#{params[:page]}"
  end
end
