describe 'Keyboard' do 
    before(:each) do
        visit '/key_presses'
    end

    it 'should send simbol keys' do
        keys = %i[tab escape space enter shift control alt]

        keys.each do |key|
            find('#campo-id').send_keys key
            expect(page).to have_content 'You entered: ' + key.to_s.upcase
        end
    end

    it 'should send key letters' do
        letters = %w[a s d f g h j k l]

        letters.each do |letter|
            find('#campo-id').send_keys letter
            expect(page).to have_content 'You entered: ' + letter.to_s.upcase
        end
    end

    after(:each) do
        sleep(3)
    end
end