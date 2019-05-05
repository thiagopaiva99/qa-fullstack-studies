describe 'Javascrip Alerts' do 
    before(:each) do
        visit '/javascript_alerts'
    end

    it 'should show an alert message' do
        click_button 'Alerta'

        alert_message = page.driver.browser.switch_to.alert.text

        expect(alert_message).to eql 'Isto é uma mensagem de alerta'
    end

    it 'should confirm alert message' do
        click_button 'Confirma'

        alert_message = page.driver.browser.switch_to.alert.text

        expect(alert_message).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.accept

        expect(page).to have_content 'Mensagem confirmada'
    end

    it 'should confirm reject message' do
        click_button 'Confirma'

        alert_message = page.driver.browser.switch_to.alert.text

        expect(alert_message).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.dismiss

        expect(page).to have_content 'Mensagem não confirmada'
    end

    after(:each) do
        sleep(3)
    end
end