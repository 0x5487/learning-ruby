class Movie
    attr_reader :name, :year, :age
  
    def initialize(name, year)
      @name = name
      @year = year
      @age = 18
    end
  end