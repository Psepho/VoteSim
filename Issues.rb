class Issue
    
    attr_accessor :position, :weight
    attr_reader :name
    
    def initialize(name, position, weight)
        @name = name
        @position = position
        @weight = weight
    end
end