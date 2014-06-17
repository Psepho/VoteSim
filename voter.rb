require_relative 'basic_election_agent.rb'

class Voter < BasicElectionAgent
    
    attr_reader :age, :income, :subscribed_media
	attr_accessor :candidate_likeability
	
    def initialize(age, income, *basic_election_agent)
        super basic_election_agent
        @age = age
        @income = income
        @location = location
		@candidate_likeability = Array.new
		@subscribed_media = Hash.new
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
		# Scan through issue_set of each candidate and calculate the sum of squared differences for each issue Sum(position*weight)*candidate_likeability. Then choose the candidate with the minimum value
	end
	def vote
		# If past turnout threshold, vote for #choose_candidate
	end
	def respond_to_poll
		# Issue and candidate polls, add noise based on candidate likeability (accommodates uncertainty in position, as perceived by voter)
	end
	def adjust_candidate_likeability(candidate, amount)
		@candidate_likeability[candidate.name] += amount
	end
	def choose_media(media)
		@subscribed_media << media
	end
end
