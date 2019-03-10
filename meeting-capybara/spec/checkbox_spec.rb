describe 'Checkbox' do 
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'should check some option' do
        check('thor')
    end

    it 'should uncheck some option' do
        uncheck('antman')
    end

    after(:each) do
        sleep 3
    end
end