class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total = 0
    @characters.each do |character|
      total += character.salary
    end
    total
  end

  def highest_paid_actor
    salary = 0
    actor = []
    @characters.each do |character|
      if character.salary > salary
        salary = character.salary
        actor << character
      end
    end
    actor[-1].actor
  end

  def actors
    actor = []
    @characters.each do |character|
      actor << character.actor
    end
    actor
  end
end
