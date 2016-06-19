class Devicetype
  attr_accessor :id, :name, :group, :description, :payloadType, :contract, :keepAlive

  def initialize json
    self.id = json['id']
    self.name = json['name']
    self.group = json['group']
    self.description = json['description']
    self.payloadType = json['payloadType']
    self.contract = json['contract']
    self.keepAlive = json['keepAlive']
  end
  

end
