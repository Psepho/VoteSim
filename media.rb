require_relative 'basic_election_agent.rb'

class Media < BasicElectionAgent
    
    attr_accessor :readership
    attr_reader :quality, :media_share
    # tractability = 0
    
    def initialize(readership, quality, *basic_election_agent)
        super basic_election_agent
        @readership = readership.to_i
        @quality = quality.to_f || 0.5
    end
    def add_reader
    	change_readership_by(1)
    end
    def remove_reader
    	change_readership_by(-1)
    end
    def conduct_poll
    	# Costs $
    end
    def report_news(type)
    	# In response to candidate#announcement or poll. Costs $ * quality
    	# Types include polls, articles, endorsements
    	# Increments name_recognition
    end
    def choose_candidate
    end
    def run_ad
    	# Paid for by candidate
    end
    def media_share
    end
    
    private
    def change_readership_by(amount)
    	@readership += amount.to_i
    end
    
end
