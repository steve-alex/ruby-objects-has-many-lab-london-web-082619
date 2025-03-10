require_relative "./song"
require 'pry'

class Artist

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self  
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def self.song_count
        Song.all.length
    end

end
