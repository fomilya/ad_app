class PersonsController < ApplicationController
  def profile
      @ad = Ad.where(user_id: current_user.id)
  end
end
