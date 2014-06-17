module Logger
    def log(msg)
        puts "#{self} (#{msg})"
    end
end

require_relative 'issues.rb'

class BasicElectionAgent
    
    include Logger
    attr_accessor :issue_set, :savings
    attr_reader :location, :cashflow, :tractability#, :party_affiliation
    
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
        #log("Changed issue")
    end
	
	def measure_alignment(other_issue_set)
		# Take self.issue_set and calculate alignment with other_issue_set
		alignment = 0
		@issue_set.each do | title, issue |
			other_issue = other_issue_set[title]
			alignment += (issue.position*issue.weight - other_issue.position*other_issue.weight)**2
		end
		alignment
	end
    
    def payday
        @savings += cashflow
		#log("Payday")
    end
end
