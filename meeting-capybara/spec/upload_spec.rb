describe 'Upload' do 
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/upload'
        @file = Dir.pwd + '/spec/fixtures/file.txt'
        @image = Dir.pwd + '/spec/fixtures/capybara.jpg'
    end

    it 'should upload text file' do
        attach_file('file-upload', @file)

        click_button 'Upload'

        expect(find('#uploaded-file').text).to include 'file.txt'
    end

    it 'should upload image' do
        attach_file('file-upload', @image)

        click_button 'Upload'

        sleep 5

        expect(find('#uploaded-file').text).to include 'capybara.jpg'
        expect(find('#new-image')[:src]).to include '/uploads/capybara.jpg'
    end

    after(:each) do
        sleep 3
    end
end