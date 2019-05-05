describe 'Forms' do
    before(:each) do
        visit '/login'
    end

    it 'should login' do
        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'should show wrong user message' do
        fill_in 'username', with: 'starkkk'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('.flash.error').visible?).to be true
        expect(find('.flash.error').text).to include 'O usuário informado não está cadastrado!'
    end

    it 'should show wrong password message' do
        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis'

        click_button 'Login'

        expect(find('.flash.error').visible?).to be true
        expect(find('.flash.error').text).to include 'Senha é invalida!'
    end
end