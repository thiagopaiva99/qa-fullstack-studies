describe 'Drag and Drop' do 
    before(:each) do
        visit '/drag_and_drop'
    end

    it 'should spiderman belongs to the iron man team' do
        iron_man = find('.team-stark .column')
        spider_man = find('img[alt$=Aranha]')

        spider_man.drag_to iron_man

        expect(iron_man).to have_css 'img[alt$=Aranha]'
    end

    after(:each) do
        sleep(3)
    end
end