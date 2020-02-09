class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    self.actors.map do |actor|
        actor.full_name
    end 
  end 

  def build_network(call_letters)
    new_network = Network.new(call_letters)
    self.network = new_network
  end 

end