class Zoo
  attr_reader :cages, :employees
  def initialize(name, season_opening_date, season_closing_date, count = 10)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    @employees = []

    count.times do
      @cages << Cage.new
    end
  end

  def add_employee (employee)
    @employees << employee
  end

  def open?(date)
    date >= @season_opening_date && date <= @season_closing_date
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        cage.animal = animal
        return
      end
    end
    return "Your zoo is already at capacity!"
  end

  def visit
    waved_string = ""
    @employees.each do |employee|
      waved_string += "#{employee.greet}\n"
    end
    @cages.each do |cage|
      unless cage.empty?
        waved_string += "#{cage.animal.speak}\n"
      end
    end
    return waved_string
  end
end
