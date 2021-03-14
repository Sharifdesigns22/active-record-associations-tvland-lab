class Network < ActiveRecord::Base
  has_many :shows
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

    def sorry
      sorry = "We're sorry about passing on John Mulaney's pilot"
    end
   

    def actors_list
        self.actors.map{|actor| actor.full_name}
    end
end 