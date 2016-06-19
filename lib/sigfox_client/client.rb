require 'open-uri'

module SigfoxClient

  class Client
    API_SIGFOX_URL = "https://backend.sigfox.com/api/"
    attr_accessor :username, :password

    def initialize(username, password)
      if username.empty? || password.empty?
        raise ArgumentError, 'username and password are required'
      end
      self.password = password
      self.username = username
    end

    def get_groups
      data = get_json('groups')
      puts data
    end

    def get_devicetypes
      res = get_json('devicetypes')
      device_types_json = JSON.parse(res)['data']
      devicetypes = []
      device_types_json.each do |d|
          devicetypes.push Devicetype.new(d)
      end
      # puts devicetypes.to_json
      devicetypes
    end

    def get_devices(devicetype)
      # puts devicetype.to_json
      res = get_json("devicetypes/#{devicetype.id}/devices")
      devices_json = JSON.parse(res)['data']
      devices = []
      devices_json.each do |d|
        devices.push Device.new(d)
      end
      devices
    end

    private

      def get_json(api_uri)
        url = API_SIGFOX_URL + api_uri
        auth = {username: username, password:password}
        result = HTTParty.get(url, {basic_auth: auth, follow_redirects: true} )
        # json_data = result.nil? ? nil : JSON.parse(result.body)
        result.body
      end

  end


end
