describe 'Windows' do 
    before(:each) do
        visit '/windows'
    end

    it 'should open a new window' do
        click_link 'Clique aqui'

        within_window -> { page.title == 'Nova Janela' } do
            expect(page).to have_content 'Aqui temos uma nova janela \o/'
        end
    end

    after(:each) do
        sleep(3)
    end
end