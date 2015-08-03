class Actor < ActiveRecord::Base
<<<<<<< HEAD

  def age
    @actor = Actor.find_by_id(id)
    Time.now.year - @actor.year_of_birth
  end

=======
  has_and_belongs_to_many :movies
>>>>>>> 6d9c9821d89f46415ec9f681643d44cb11711250
end
