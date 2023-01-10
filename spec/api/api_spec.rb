require 'rails_helper'
require 'httparty'

RSpec.describe 'API', type: :request do
  describe '/api/v1/vehicles' do
    
    it 'returns a list of vehicles' do
      Vehicle.create(name: 'Tesla Model X',  image: 'https://tesla-cdn.thron.com/delivery/public/image/tesla/8c26f779-11e5-4cfc-bd7c-dcd03b18ff88/bvlatuR/std/4096x2561/Model-X-Main-Hero-Desktop-LHD')
    Vehicle.create(name: 'Tesla Model 3',  image: 'https://tesla-cdn.thron.com/delivery/public/image/tesla/5a7b3001-249f-4065-a330-4ea6a17ccf7b/bvlatuR/std/2560x1708/Model-3-Main-Hero-Desktop-LHD')
    Vehicle.create(name: 'Tesla Model Y',  image: 'https://tesla-cdn.thron.com/delivery/public/image/tesla/91abd4c7-32a1-41cc-ade5-b64774dbea61/bvlatuR/std/2880x1800/Model-Y-Main-Hero-Desktop-Global?quality=auto-medium&amp;format=auto')

      get '/api/v1/vehicles'
      expect(response).to have_http_status(200)
      expect(response.body).to eq(Vehicle.all.to_json)
    end
  end
end