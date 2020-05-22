require_relative 'oystercard'
class Journey < Oystercard

MINIMUM_FARE = 1

  def initialize
    @journey_complete = false
  end

  # def journey_start
  #   Oystercard.new.touch_in("Hackney")
  # end

  def journey_start
    @entry_station
  end

  def exit_station
    "Hackney"
  end

  def journey_complete?
    @journey_complete
  end

end
