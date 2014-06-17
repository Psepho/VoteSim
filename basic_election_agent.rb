module Logger
    def log(msg)
        STDERR.puts Time.now.strftime("%H:%M:%S: ") + "#{self} (#{msg})"
    end
end

require_relative 'issues.rb'

class BasicElectionAgent
    
    include Logger
    attr_accessor :issue_set
    attr_reader :location
    def initialize(location)
        @location = location
        @issue_set = Hash.new
    end
    def add_issue(name, position, weight)
        @issue_set[ name ] = Issue.new(name, position, weight)
    end
    def change_issue(name, position_amount, weight_amount)
        @issue_set[ name ].position += position_amount
        @issue_set[ name ].weight += weight_amount
        log("Changed issue")
        #@issue_set [ name ]
    end
end
