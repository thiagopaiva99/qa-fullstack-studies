describe 'Forms' do
    it 'should login' do
        visit 'http://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'should show wrong user message' do
        visit 'http://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'starkkk'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('.flash.error').visible?).to be true
    end

    it 'should show wrong password message' do
        visit 'http://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis'

        click_button 'Login'

        expect(find('.flash.error').visible?).to be true
    end
end