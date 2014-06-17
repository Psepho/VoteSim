require_relative 'basic_election_agent.rb'

class Media < BasicElectionAgent
    
    attr_accessor :readership
	attr_reader :quality
    
    def initialize(readership, quality, *basic_election_agent)
        super basic_election_agent
        @readership = readership.to_i
		@quality = quality.to_i || 5
    end
	def add_reader
		change_readership_by(1)
	end
	def remove_reader
		change_readership_by(-1)
	end
	def conduct_poll
	end
	def write_article
		# In response to candidate#announcement. Costs $ * quality
	end
	def choose_candidate
	end
	
	private
	
	def change_readership_by(amount)
		@readership += amount.to_i
	end
    
end
