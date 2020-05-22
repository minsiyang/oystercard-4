require_relative 'oystercard'
class Journey
  
  def initialize
    @journey_complete = false
  end

  def entry_station
    "Bank"
  end

  def exit_station
    "Hackney"
  end

  def journey_complete?
    @journey_complete
  end

end