describe 'Register' do 
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/access'
    end

    it 'should login' do
        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            
            click_button 'Entrar'
        end

        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'should register' do
        within('#signup') do
            find('input[name=username]').set 'thiago'
            find('input[name=password]').set '123456'
            
            click_button 'Criar Conta'
        end

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end

    after(:each) do
        sleep(3)
    end
end