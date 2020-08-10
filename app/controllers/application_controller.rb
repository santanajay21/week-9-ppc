class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper
  rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found

  def handle_record_not_found
    render :'errors/not_found'
  end

end
