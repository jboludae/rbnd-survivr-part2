class Tribe
  attr_reader :members

  def initialize(tribe)
    @name = tribe[:name]
    @members = tribe[:members]
    puts "Tribe #{@name} has been created"
  end

  def name
    puts @name
  end

  def tribal_council(options = {})
    selected_member = @members.sample
    while selected_member == options[:immune]
      selected_member = @members.sample
    end
    puts "#{selected_member} has been voted off"
    @members.delete(selected_member)
    return selected_member
  end

end
