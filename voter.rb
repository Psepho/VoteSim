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
    
end
