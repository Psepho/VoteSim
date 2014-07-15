require 'csv'
require_relative 'voter'
require_relative 'candidate'
require_relative 'media'


class Election

    attr_accessor :candidates, :medias, :voters, :week

    def initialize
        @candidates = Hash.new
        @medias = Hash.new
        @voters = Array.new
        @week = 0
    end
    def setup_voters
        CSV.foreach("voters.csv", headers: true, converters: :numeric) do |row|
            voter = Voter.new(row["age"],row["engagement"],row["location"],row["cash_flow"],row["savings"],row["tractability"], self) unless row.empty?
            @voters << voter
        end
    end
    def setup_media
        # read in csv?
    end
    def setup_candidates
        # read in csv?
    end
    def new_week
        @week += 1
        # do something to each object. Call a #new_week method?
    end
    def poll_voters
    end
    def tally_votes
    end

end
