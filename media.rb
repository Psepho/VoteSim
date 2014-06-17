require_relative 'basic_election_agent.rb'

class Media < BasicElectionAgent
    
    attr_accessor :readership
    
    def initialize(readership, *basic_election_agent)
        super basic_election_agent
        @readership = readership.to_i
    end
    
end
