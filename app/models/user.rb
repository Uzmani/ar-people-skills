class User < ActiveRecord::Base
  
  
  has_many :proficiencies
  has_many :skills, through: :proficiencies


  def proficiency_for(skill)
    Proficiency.find_by_user_id_and_skill_id(self.id, skill.id).proficiency_rating
  end

  def set_proficiency_for(skill, new_rating)

    id = Proficiency.find_by_user_id_and_skill_id(self.id, skill.id).id
    Proficiency.update(id, proficiency_rating: new_rating) 
  end

end