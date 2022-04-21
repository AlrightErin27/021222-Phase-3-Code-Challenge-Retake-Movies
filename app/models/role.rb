class Role < ActiveRecord::Base
  belongs_to :movie
  belongs_to :actor

  def credit
    Role.all.map do |role|
      "#{role.character_name}: Played by #{role.actor.name}"
    end
  end
end
