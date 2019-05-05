describe 'Select2' do 
    describe 'Single' do
        before(:each) do
            visit '/apps/select2/single.html'
        end

        it 'should select actor by name' do
            find('.select2-selection--single').click

            sleep(1)

            find('.select2-results__option', text: 'Adam Sandler').click

            expect(find('select').value).to eql 'number:1' 
        end

        it 'should select actor by search the name' do
            find('.select2-selection--single').click

            sleep(1)

            find('.select2-search__field').set 'Chris Rock'

            find('.select2-results__option').click

            expect(find('select').value).to eql 'number:2' 
        end
    end

    describe 'Multiple' do
        before(:each) do
            visit '/apps/select2/multi.html'
        end

        def select_actor(actor)
            find('.select2-selection--multiple').click
            sleep(0.5)
            find('.select2-search__field').set actor
            find('.select2-results__option').click
        end

        it 'should select actors', :multi do
            actors = ['Jim Carrey', 'Owen Wilson', 'Kevin James']

            actors.each do |actor|
                select_actor(actor)                
            end
        end
    end

    after(:each) do
        sleep(3)
    end
end