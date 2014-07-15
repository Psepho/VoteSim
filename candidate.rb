require_relative 'basic_election_agent.rb'

class Candidate < BasicElectionAgent

	attr_reader :name
    attr_accessor :name_recognition, :party_membership
    
    def initialize(name, name_recognition, *basic_election_agent)
        super basic_election_agent
		@name = name.to_s
		@name_recognition = name_recognition.to_i
		@party_membership = "None" # Voters can belong to more than one party, stored as a hash
    end
	def make_announcement(type)
		# Choose issue and make announcement, which costs $ (by type)
    end
	def join_election
		# Based on poll results and function of name_recognition and savings.
		# Big candidates need large support before entering
	end
	def leave_election
		# If savings too low, drop from race
	end
	def endorse_candidate
		# If #leave_election, might choose another candidate
	end
	def adjust_name_recognition(amount)
		@name_recognition += amount.to_i
		# Also increment cash flow? Might get more expensive with size
	end
	def read_news
		# Review polls in particular
	end
	def change_party_membership(party)
		@party_membership = party
	end
end
