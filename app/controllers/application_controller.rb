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

  def gallery
    @body_id = 'gallery'
    @aditional_css = ['vendor/brankic', 'vendor/isotope']
    @aditional_js = ['vendor/jquery.isotope.min', 'imagesloaded', 'gallery']
    render 'layouts/_gallery'
  end

  def portfolio
    @body_id = 'portfolio'
    @aditional_css = ['vendor/brankic', 'vendor/isotope']
    @aditional_js = ['vendor/jquery.isotope.min', 'imagesloaded', 'gallery']
    render 'layouts/_portfolio'
  end

  def portfolio_item
    @body_id = 'portfolio-item'
    render 'layouts/portfolio_item'
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

  def invoice
    @body_id = 'invoice'
    render 'layouts/invoice'
  end

  def timeline
    @body_id = 'timeline'
    @aditional_css = ['vendor/ionicons.min']
    render 'layouts/_timeline'
  end

  def support
    @body_id = 'support'
    @aditional_css = ['vendor/ionicons','vendor/font-awesome','vendor/entypo']
    render 'layouts/_support'
  end

  def status
    @body_id = 'status'
    render 'layouts/_status'
  end

  def error_404
    render 'layouts/error_404'
  end

  def features
    @body_id = 'features'
    render 'layouts/_features'
  end

  def services
    @body_id = 'services'
    @aditional_css = ['vendor/brankic', 'vendor/animate']
    render 'layouts/_services'
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
    elsif action == 'portfolio_item'
      'portfolio_item'
    elsif action == 'invoice'
      'invoice'
    elsif action == 'coming_soon'
      'coming_soon'
    elsif action == 'error_404'
      'error_404'
    end
  end

end
