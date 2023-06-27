class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound do |exception|
    flash[:alert] = "#{exception} - { Model: #{exception.model} }"
    redirect_to root_path
  end
end
