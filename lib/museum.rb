class Museum
  attr_reader :name,
              :exhibits

  def initialize(name)
    @name        = name
    @exhibits    = []

  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
  if patron.interests.include?(exhibits[0].name) == true
      exhibits
      #tbh i should use an enum
    end
  end
end
