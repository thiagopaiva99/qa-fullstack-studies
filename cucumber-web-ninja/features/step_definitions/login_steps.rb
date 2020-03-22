Quando("eu faço login com {string} e {string}") do |string, string2|
    visit "/"

    sleep 3
end

Entao("devo ser autenticado") do
    pending # Write code here that turns the phrase above into concrete actions
end

Entao("devo ver {string} na área logada") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  