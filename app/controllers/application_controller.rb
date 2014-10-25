class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout 'home_1', only: [ :home_1 ]
  layout 'home_2', only: [ :home_2 ]
  layout 'about_us', only: [ :about_us ]


  def about_us
    render 'layouts/about_us'
  end

  def home_1
    render 'layouts/home_1'
  end

  def home_2
    render 'layouts/home_2'
  end

end
