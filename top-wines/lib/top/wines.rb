
module Top
  class Wines

    attr_accessor :name, :description

    @@all = []

      def initialize(name)
        @name = name
        @@all << self
      end

      def self.all
        @@all
      end

  end
end
