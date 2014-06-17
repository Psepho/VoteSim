require_relative 'basic_election_agent.rb'

class Candidate < BasicElectionAgent
    
    def initialize(location, *basic_election_agent)
        super basic_election_agent
    end
    
end
