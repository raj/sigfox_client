class Message
  attr_accessor :device, :time, :data, :snr, :linkQuality

  def initialize json
    self.device = json['device']
    self.time = json['time']
    self.data = json['data']
    self.snr = json['snr']
    self.linkQuality = json['linkQuality']
  end

end
