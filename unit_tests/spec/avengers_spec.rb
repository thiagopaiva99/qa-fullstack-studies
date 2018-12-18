class AvengersHeadQuarter
    attr_accessor :avengers

    def initialize
        self.avengers = []
    end

    def put(avenger)
        self.avengers.push(avenger)
    end
end

# TDD (Test Driven Development)
describe AvengersHeadQuarter do
    it 'should add an avenger' do
        headQuarter = AvengersHeadQuarter.new

        headQuarter.put('SpiderMan')

        expect(headQuarter.avengers).to eql ['SpiderMan']
    end
end