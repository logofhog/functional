require_relative 'math_func'

describe MathFunc do
  it 'should work' do
    tmp = MathFunc.new
    puts tmp.apply_math(:+, 1, 2)
    puts tmp.apply_math(:-, 1, 2)
    puts tmp.apply_math(:*, 9, 2)
    puts tmp.apply_math(:/, 12, 2)
    puts "aaaaaaaaaaaaaaaaaaaa"
  end
  
  it 'curry' do
    MathFunc.apply_math_lambda
  end
end

