class Clock
  attr_reader :clock, :hour, :minute

  def initialize(hour:0, minute:0)
    @hour   = hour
    @minute = minute
    @clock  = Time.new(2000,1,1,0,0,0) + hour*60*60 + minute*60
    self
  end

  def +(other)
    @clock += other.hour*60*60 + other.minute * 60
    self
  end

  def -(other)
    @clock -= other.hour*60*60 + other.minute * 60
    self
  end

  def eql?(other)
    return self.to_s.eql?(other.to_s)
  end

  def ==(other)
    return @clock.to_s.eql?(other.to_s)
  end

  def to_s
    @clock.strftime("%H:%M")
  end
end

clock1 = Clock.new(hour: 6, minute: 41)
clock2 = Clock.new(hour: 6, minute: 41)
pp clock1.eql?(clock2)
