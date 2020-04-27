require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

   extend Memorable::ClassMethods
    include Paramable
    include Memorable::InstanceMethods
    
  @@artists = []

  # def initialize
  # self.class.all << self
  # end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def self.all
    @@artists
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
