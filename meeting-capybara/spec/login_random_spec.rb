describe 'Login Random Fields' do 
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/login2'
    end

    it 'should appear the born date' do
        find('#userId').set 'stark'
        find('#passId').set 'jarvis!'

        login_form = find('#login')

        case login_form.text
            when /Dia/
                find('#day').set '29'

            when /Mês/
                find('#month').set '05'

            when /Ano/
                find('#year').set '1970'
        end

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    end

    after(:each) do
        sleep(3)
    end
end