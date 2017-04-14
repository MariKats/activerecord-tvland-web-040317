class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

 def full_name
    actor = Actor.create(first_name: first_name, last_name: last_name)
    full_name = "#{first_name} #{last_name}"
    full_name
 end

 def list_roles
  array = []
  character = self.characters.map {|char| char.name}
  show = self.shows.map {|show| show.name}
  array << character[0]
  array << show[0]
  array.join(" - ")

  #  self.shows [#<Show:0x007ff456f4f298
  # id: 1,
  # name: "Game of Thrones",
  # network_id: nil>]
 end

end
