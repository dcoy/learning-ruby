# Custom methods in Ruby - Metaprogramming
class Baseball
end

class Baseball
  def swing
    return "Homerun!"
  end
end

# p Baseball.new.swing

class Baseball
  def swing
    return "Strike!"
  end
end

p Baseball.new.swing
