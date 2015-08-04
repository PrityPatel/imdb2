class User < ActiveRecord::Base
  def full_name
    "#{first_name } #{last_name}"
  end

  has_many :reviews
  has_many :movies, through: :reviews

end
