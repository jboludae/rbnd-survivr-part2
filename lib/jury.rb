class Jury
	attr_accessor :members

	def initialize
		@members = []
	end

	def add_member(member)
		puts "#{member} is now part of the jury".green
		@members << member
	end

	def members
		@members
	end

	def cast_votes(finalists)
		result = Hash.new(0)
		@members.each do |member|
			finalist = finalists.sample
			result[finalist] += 1
			puts "#{member} votes for #{finalist}".blue
		end
		return result
	end

	def report_votes(final_votes)
		final_votes.each do |finalist, score|
			puts "#{finalist} got #{score} votes".light_grey
		end
	end

	def announce_winner(final_votes)
		winner = final_votes.max_by{|finalist, votes| votes}.first
		puts "#{winner} has won!".pink
		return winner
	end

end