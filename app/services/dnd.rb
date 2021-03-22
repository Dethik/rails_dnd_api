class Dnd

  def initialize(dnd_class)
    @class = dnd_class
  end

  def get_class_name
    response = HTTParty.get('https://www.dnd5eapi.co/api/classes/' + @class)
  end
end