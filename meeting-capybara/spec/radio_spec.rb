describe 'Radio' do 
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'should select cap' do
        choose('cap')
    end

    it 'should select guardians by css selector' do
        find('input[values=guardians]').click
    end

    after(:each) do
        sleep 3
    end
end