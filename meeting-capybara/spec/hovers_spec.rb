describe 'Mouse Hovers' do 
    before(:each) do
        visit '/hovers'
    end

    it 'should the mouse hover on Blade' do
        card = find('img[alt=Blade]')

        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'should the mouse hover on Black Panter' do
        card = find('img[alt="Pantera Negra"]')

        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    after(:each) do
        sleep(3)
    end
end