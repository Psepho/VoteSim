module Logger
    def log(msg)
        "#{self} (#{msg})"
    end
end

require_relative 'issues.rb'

class BasicElectionAgent
    
    include Logger
    attr_accessor :issue_set, :savings
    attr_reader :location, :cashflow, :tractability
    
    def initialize(params)
        @location = params[0]
        @issue_set = Hash.new
        @cashflow = params[1].to_i || 0 # Monthly income/expenses
        @savings = params[2].to_i || 0
        @tractability = params[3].to_f || 0.1
    end
    
    def add_issue(name, position, weight)
        @issue_set[ name ] = Issue.new(name, position, weight)
    end
    
    def change_issue(name, position_amount, weight_amount)
        @issue_set[ name ].position += position_amount
        @issue_set[ name ].weight += weight_amount
        log("Changed issue")
    end
    
    def payday
        @savings += cashflow
		log("Payday")
    end
end
