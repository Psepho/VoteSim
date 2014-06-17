require_relative 'basic_election_agent.rb'

class Voter < BasicElectionAgent
    
    attr_reader :age, :income
    def initialize(age, income, *basic_election_agent)
        super basic_election_agent
        @age = age
        @income = income
        @location = location
    end
    def to_s
        puts "#{self.class} #{self.object_id} with age = #{age} and issues #{@issue_set}"
    end
	def subscribe
		# find media, increment readership, add to media cashflow, and subtract from self cashflow
	end
	def unsubscribe
		# find media, decrement readership, subtract from media cashflow, and add to self cashflow
	end
	def donate
		# find candidate, subtract from self cashflow, and add to candidate cashflow
	end
    def choose_candidate
		# Scan through issue_set of each candidate and calculate the sum of squared differences for each issue (position*weight). Then choose the candidate with the minimum value
	end
	def vote
		# If past turnout threshold, vote for #choose_candidate
	end
end
