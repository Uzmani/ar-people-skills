class Skill < ActiveRecord::Base
  
  has_many :proficiencies
  has_many :users, through: :proficiencies
  # belongs_to :users 
  validates :name, uniqueness: true

  def user_with_proficiency(rating)
    Proficiency.where(proficiency_rating: rating)
    
  end

end