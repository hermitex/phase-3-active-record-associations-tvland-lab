class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  def actor
    Actor.find_by(id: self.actor_id)
  end

  def show
    Show.find_or_create_by(id: self.id)
  end

  def say_that_thing_you_say
    "#{self[:name]} always says: #{self[:catchphrase]}"
  end
end
