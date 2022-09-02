class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  def characters
    Character.all
  end

  def network
    Network.create(id: nil, call_letters: "NBC")
    Network.all
  end

  def actors_list
   Actor.all.map { |actor| actor[:first_name] << " " << actor[:last_name]  }
  end
end
