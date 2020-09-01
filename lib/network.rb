class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_chars = []
    @shows.each do |show|
      show.characters.each do |character|
        if character.name == character.name.upcase && character.salary > 500_000
          main_chars << character
        end
      end
    end
    main_chars
  end

  def actors_by_show
    hash = Hash.new
    @shows.each do |show|
      hash[show] = show.actors
    end
    hash
  end

  def shows_by_actor
    hash = Hash.new
    @shows.each do |show|
      show.actors.each do |actor|
        if hash.has_key?(actor)
          hash[actor] << show
        else
          hash.store(actor, [show])
        end
      end
    end
    hash
  end
end