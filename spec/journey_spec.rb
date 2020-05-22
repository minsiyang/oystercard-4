require 'journey'
require 'oystercard'
describe Journey do
  let(:journey) {Journey.new}
  let(:entry_station) { double("entry_station") }

    it "journey is not complete when initialzing" do
      expect(journey.journey_complete?).to eq false
    end

    it "starts a journey" do

      expect(journey.journey_start).to be entry_station
    end

    it "create an exit station" do
      expect(journey.exit_station).to eq ("Hackney")
    end



    # let(:entry_station) { entry_station = double(:station) }
    # let(:exit_station) { exit_station = double(:station) }

    # it {is_expected.to be_instance_of Journey}

    # before do
    #     card = Oystercard.new
    #     card.top_up(10)
    #     card.touch_in(entry_station)
    # end

    # context 'journey start' do
    #     it 'should remember the entry_station when #touch_in' do
    #         expect(subject.start).to eq entry_station
    #     end
    # end



    # describe '#touch_in' do
    #   it "should change #in_journey to true" do
    #     expect(subject).to be_in_journey
    #   end
    #   it "stores current entry station" do
    #     expect(subject.entry_station).to eq(entry_station)
    #   end
    # end

    # describe '#touch_out' do
    #   it "should change #in_journey to false" do
    #     subject.touch_out(exit_station)
    #     expect(subject).not_to be_in_journey
    #   end
    #   it "should deduct the minimum fare from the card" do
    #     min_fare = Oystercard::MINIMUM_FARE
    #     expect { subject.touch_out(exit_station) }.to change{ subject.balance }.by(-min_fare)
    #   end
    #   it 'should store exit_station' do
    #     subject.touch_out(exit_station)
    #     expect(subject.exit_station).to eq(exit_station)
    #   end
    # end
    # describe '#my_trip' do
    #   it 'should have no journeys at the start' do
    #     expect(subject.my_trips).to eq([])
    #   end
    #   it 'should print my trip' do
    #     subject.touch_out(exit_station)
    #     expect(subject.my_trips).to eq([{:entry => entry_station, :exit => exit_station}])
    #   end
    #   it 'store two trips in an array' do
    #     subject.touch_out(exit_station)
    #     subject.touch_in(entry_station)
    #     subject.touch_out(exit_station)
    #     expect(subject.my_trips).to eq([{:entry => entry_station, :exit => exit_station}, {:entry => entry_station, :exit => exit_station}])
    #   end
    # end
end
