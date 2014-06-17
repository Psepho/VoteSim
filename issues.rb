class Issue

	include Comparable
    attr_accessor :position, :weight
    attr_reader :name
    
    def initialize(name, position, weight)
        @name = name
        @position = position
        @weight = weight
    end
	
	def <=>(other)
		self.name <=> other.name
	end
end
