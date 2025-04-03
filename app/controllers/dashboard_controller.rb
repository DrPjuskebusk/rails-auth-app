class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    authorize :dashboard, policy_class: DashboardPolicy
  end
end
