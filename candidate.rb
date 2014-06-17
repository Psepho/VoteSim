require_relative 'basic_election_agent.rb'

class Candidate < BasicElectionAgent
    
    def initialize(name, name_recognition, *basic_election_agent)
        super basic_election_agent
		@name = name.to_s
		@name_recognition = name_recognition.to_i
    end
	def make_announcement
		# Choose issue and make announcement, which costs $
    end
	def leave_election
		# If savings too low, drop from race
	end
	def endorse_candidate
		# If #leave_election, might choose another candidate
	end
	def adjust_name_recognition(amount)
		@name_recognition += amount.to_i
	end
end
