describe 'Dropdown' do
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/dropdown'
    end

    it 'should select some avenger with dropdown id' do
        select('Loki', from: 'dropdown')
    end

    it 'should select some avenger without dropdown id' do
        avenger_list = find('.avenger-list')
        avenger_list.find('option', text: 'Scott Lang').select_option
    end

    it 'should select some random avenger' do
        avenger_list = find('.avenger-list')
        avenger_list.all('option').sample.select_option
    end

    after(:each) do
        sleep 3
    end
end