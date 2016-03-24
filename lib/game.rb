
class Game
  attr_reader :tribes

  def initialize(tribe_one, tribe_two)
    @tribes = [tribe_one, tribe_two]
  end

  def add_tribe(tribe)
    @tribes << tribe
  end

  def immunity_challenge
    @tribes.first
  end

  def clear_tribes
    @tribes = []
  end

  def merge(name)
    @tribes.first
    Tribe.new({name: name, members: @tribes.first.members + @tribes.last.members})
  end

  def individual_immunity_challenge
    @tribes.sample.members.sample
  end

end