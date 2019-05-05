module Enjoeat
    def food_day(day)
        if day == "Monday"
            return "Strogonoff"
        elsif day == "Tuesday"
            return "Parmeggiana"
        end
    end
end

World Enjoeat

Given("that today is Monday") do
  @today = "Monday"
end

Given("that today is Tuesday") do
  @today = "Tuesday"
end

When("I ask what is the food day") do
  @answer = food_day(@today)
end

Then("the answer should be {string}") do |answer|
  expect(@answer).to eql answer
end
