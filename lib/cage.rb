class Cage
  attr_accessor :animal

  def empty?
    if animal
      false
    else
      true
    end
  end
end
