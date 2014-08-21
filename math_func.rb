class MathFunc
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a-b
  end

  def divide(a, b)
    a/b
  end

  def multiply(a, b)
    a * b
  end

  def apply_math(fn, a, b)
    a.send(fn, b)
  end
  
  def self.apply_math_lambda
    apply_math = ->(fn, a, b) { a.send(fn, b)}
    add = apply_math.curry.(:+)
    subtract = apply_math.curry.(:-)
    puts add.(2, 9)
    puts add.curry.(1).call(30)
    increment = add.curry.(1)
    puts increment.(89)
    puts apply_math.curry.(:+).(2,14)
  end

end
