class Role < ActiveRecord::Base
  belongs_to :movie
  belongs_to :actor

  #should return a string formatted as follows: {insert character name}: Played by {insert actor name}
  def credit
    actors_name = Actor.find_by(id: self.actor_id)
    "#{self.character_name}: Played by #{actors_name.name}"
  end

  #### This would work if I had any seeds that linked the actors to their new roles. seeded so many time4s that the ids are different
end
