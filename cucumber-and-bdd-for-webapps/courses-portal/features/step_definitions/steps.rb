When("I make a search for {string} term") do |term|
  visit '/cursos'

  find('#searchtext').set term
  find('#btn_form_search').click
end

Then("I should see the notification {string}") do |notification|
  expect(page).to have_text notification
end
