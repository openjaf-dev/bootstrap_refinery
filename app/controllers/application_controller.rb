class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :select_layout

  def about_us
    render 'layouts/about_us'
  end

  def home_1
    render 'layouts/home_1'
  end

  def home_2
    render 'layouts/home_2'
  end

  def login_view
    render 'layouts/sign_in_up'
  end

  private

  def select_layout
    action = params[:action]
    if action == 'home_1'
      'home_1'
    elsif action == 'home_2'
      'home_2'
    elsif action == 'login_view'
      'sign_in_up'
    end
  end

end
