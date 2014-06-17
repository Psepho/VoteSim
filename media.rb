require_relative 'basic_election_agent.rb'

class Media < BasicElectionAgent
    
    attr_accessor :readership
    
    def initialize(readership, location, cashflow = 0, savings = 0, tractability = 0.1)
        super(location, cashflow, savings, tractability)
        @readership = readership.to_i
    end
    
end