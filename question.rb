class Question 

def initialize()
  @num1 = rand(1..20)
  @num2 = rand(1..20)
  @sum = @num1 + @num2

end

def see_question
  puts "What does #{@num1} plus #{@num2} equal to?"
  @sum
end




end

# creates a new varable where we can access the object
question = Question.new()
puts question.see_question