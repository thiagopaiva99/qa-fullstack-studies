describe 'Capybara first script' do
    it 'should visit training wheels protocol home page' do
        visit '/'

        expect(page.title).to eql 'Training Wheels Protocol'
    end
end