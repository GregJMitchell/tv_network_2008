class Character
  attr_reader :name, :actor, :salary
  def initialize(info_hash)
    @name = info_hash[:name]
  end
end