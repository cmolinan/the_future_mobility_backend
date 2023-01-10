require 'rails_helper'

RSpec.describe Api::V1::VehiclesController, type: :controller do
  before(:each) do
    #Authorize_requests
    allow(controller).to receive(:authorize_request).and_return(true)
  end
  before(:all) do
    @user = User.create(id: 1, name: 'Tom Hanks', email: 'tom@m.com', password: '666666')
    @user2 = User.create(id: 2, name: 'Mark Hamilton', email: 'mark@m.com', password: '666666')


    @vehicle1 = Vehicle.create(name: 'Tesla Model S', image: 'https://tesla-cdn.thron.com/delivery/public/image/tesla/8a74d206-66dc-4386-8c7a-88ff32174e7d/bvlatuR/std/4096x2560/Model-S-Main-Hero-Desktop-LHD')
    @vehicle2 = Vehicle.create(name: 'Tesla Model 3', image: 'https://tesla-cdn.thron.com/delivery/public/image/tesla/5a7b3001-249f-4065-a330-4ea6a17ccf7b/bvlatuR/std/2560x1708/Model-3-Main-Hero-Desktop-LHD')
    @vehicle3 = Vehicle.create(name: 'Tesla Model X', image: 'https://tesla-cdn.thron.com/delivery/public/image/tesla/8c26f779-11e5-4cfc-bd7c-dcd03b18ff88/bvlatuR/std/4096x2561/Model-X-Main-Hero-Desktop-LHD')
    @vehicle4 = Vehicle.create(name: 'Tesla Model Y', image: 'https://tesla-cdn.thron.com/delivery/public/image/tesla/91abd4c7-32a1-41cc-ade5-b64774dbea61/bvlatuR/std/2880x1800/Model-Y-Main-Hero-Desktop-Global?quality=auto-medium&amp;format=auto')

    @reserv1 = Reservation.create(reserve_date: '2023-01-21 11:00', address: 'New York, USA', user_id: @user.id,
                                  vehicle_id: @vehicle1.id)
    @reserv2 = Reservation.create(reserve_date: '2023-02-12 09:30', address: 'Tokyo, Japan', user_id: @user2.id,
                                  vehicle_id: @vehicle3.id)
    @reserv3 = Reservation.create(reserve_date: '2023-01-14 10:45', address: 'Berlin, Germany', user_id: @user.id,
                                  vehicle_id: @vehicle2.id)
    @reserv4 = Reservation.create(reserve_date: '2023-01-31 12:15', address: 'Toronto, Canada', user_id: @user.id,
                                  vehicle_id: @vehicle4.id)
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end

    it 'returns all vehicles' do
      vehicles = Vehicle.all
      get :index
      expect(response.body).to eq(vehicles.to_json)
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      get :show, params: { id: @vehicle1.to_param }
      expect(response).to be_successful
    end
    
    it 'returns the requested vehicle' do
      get :show, params: { id: @vehicle1.to_param }
      expect(response.body).to eq(@vehicle1.to_json)
    end
  end
end
