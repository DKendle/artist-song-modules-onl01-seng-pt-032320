require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

   extend Memorable
    include Paramable
    
  @@all = []

  def initialize
    @@all << self
  end

  def self.find_by_name(name)
    @@all.detect{|a| a.name == name}
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
