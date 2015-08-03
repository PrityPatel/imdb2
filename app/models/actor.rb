class Actor < ActiveRecord::Base

  def age
    @actor = Actor.find_by_id(id)
    Time.now.year - @actor.year_of_birth
  end

end
