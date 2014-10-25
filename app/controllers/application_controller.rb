class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout 'about_us', only: [ :about_us ]
  layout 'home_1', only: [ :home_1 ]


  def about_us
    render 'layouts/about_us'
  end

  def home_1
    render 'layouts/home_1'
  end

end
