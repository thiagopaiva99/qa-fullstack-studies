describe 'Dropdown' do
    it 'should select some avenger with dropdown id' do
        visit 'http://training-wheels-protocol.herokuapp.com/dropdown'

        select('Loki', from: 'dropdown')
        sleep 3
    end

    it 'should select some avenger without dropdown id' do
        visit 'http://training-wheels-protocol.herokuapp.com/dropdown'

        avenger_list = find('.avenger-list')
        avenger_list.find('option', text: 'Scott Lang').select_option

        sleep 3
    end

    it 'should select some random avenger' do
        visit 'http://training-wheels-protocol.herokuapp.com/dropdown'

        avenger_list = find('.avenger-list')
        avenger_list.all('option').sample.select_option

        sleep 3
    end
end