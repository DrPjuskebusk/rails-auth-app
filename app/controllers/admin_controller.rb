class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin
  def index
  end
  private
  def authorize_admin # Authorizes if the user is an admin and gives an alert if not.
    redirect_to root_path, alert: "Access Denied!" unless current_user&.role_admin?
  end
end
