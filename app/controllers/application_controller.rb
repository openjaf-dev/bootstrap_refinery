class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :select_layout

  def about_us
    @body_id = 'about-us'
    @aditional_css = ['vendor/animate', 'vendor/flexslider']
    @aditional_js = ['vendor/jquery.flexslider.min']
    render 'layouts/_about_us'
  end

  def contact_us
    @body_id = 'contact-us'
    @aditional_js = ['vendor/jquery.validate.min']
    render 'layouts/_contact_us'
  end

  def home_1
    @body_id = 'home'
    render 'layouts/home_1'
  end

  def home_2
    @body_id = 'home2'
    render 'layouts/home_2'
  end

  def home_3
    @body_id = 'home3'
    render 'layouts/home_3'
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
    elsif action == 'home_3'
      'home_3'
    elsif action == 'login_view'
      'sign_in_up'
    end
  end

end
