class Device
  attr_accessor :id, :name, :type, :last, :averageSignal, :averageSnr, :averageRssi, :state, :activationTime, :tokenType, :contractId, :tokenEnd

  def initialize json
    self.id = json['id']
    self.name = json['name']
    self.type = json['type']
    self.last = json['last']
    self.averageSignal = json['averageSignal']
    self.averageSnr = json['averageSnr']
    self.averageRssi = json['averageRssi']
    self.state = json['state']
    self.activationTime = json['activationTime']
    self.tokenType = json['tokenType']
    self.contractId = json['contractId']
    self.tokenEnd = json['tokenEnd']
  end

end
