Quando("eu faço login com {string} e {string}") do |email, password|
    visit "/"

    find('#emailId').set email
    find('#passId').set password

    click_button 'Entrar'

    sleep 1
end

Entao("devo ser autenticado") do
    token_js_script = 'return window.localStorage.getItem("default_auth_token");'
    token = page.execute_script(token_js_script)
    
    expect(token.length).to be 147
end

Entao("devo ver {string} na área logada") do |expected_name|
    user = find('.sidebar-wrapper .user .info span')
    expect(user).to have_text expected_name
end
  