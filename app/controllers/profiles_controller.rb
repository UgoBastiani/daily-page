class ProfilesController < ApplicationController
  def show
    @suggestions = current_user.suggestions
  end
end
