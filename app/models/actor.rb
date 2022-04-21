class Actor < ActiveRecord::Base
  has_many :roles
  has_many :movies, through: :roles

  # Actor#total_salary
  # returns the total salary for an actor based on the salary for each of their roles
  def total_salary
    self.roles.total_salary.sum
  end

  # Actor#blockbusters
  # returns a collection of all the Movie instances the actor has performed in that have a
  # box_office_earnings of over $50,000,000
  def blockbusters
    Movie.all.map | movie | if (movie.box_office_earnings > 50_000_000)
      movie.actors.map { |actor| "#{actor.name}" }
    end
  end

  # Actor.most_successful
  # returns one actor instance for the actor who has the highest total salary for all their roles
  def self.most_successful
    Actor.roles.max_by { |role| role.salary }
  end
end
