module Enjoeat
    def food_day(day)
        if day == "Monday"
            return "Strogonoff"
        elsif day == "Tuesday"
            return "Parmeggiana"
        elsif day == "Wednesday"
          return "Barbecue"
        elsif day == "Thursday"
          return "Lamen"
        elsif day == "Friday"
          return "Hamburguer"
        elsif day == "Saturday"
          return "Fries"
        elsif day == "Sunday"
          return "Pizza"
        else
          return "Dia Inválido"
        end
    end
end

World Enjoeat

Given("that today is {string}") do |day|
  @today = day
end

When("I ask what is the food day") do
  @answer = food_day(@today)
end

Then("the answer should be {string}") do |answer|
  expect(@answer).to eql answer
end
