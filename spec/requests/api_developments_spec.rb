RSpec.describe "ApiDevelopments", type: :request do
  def parsed_body
    JSON.parse(response.body)
  end

  describe "Cities-backed" do
    before(:each) { City.delete_all }
    after(:each)  { City.delete_all }

    it "create City-backed model" do
      puts 'sdf'
      puts ObjectSpace.each_object
      object=City.create(:name=>"test")
      expect(City.find(object.id).name).to eq("test")
    end

    it "expose City-backed API resource" do
      object=City.create(:name=>"test")
      expect(cities_path).to eq("/api/cities")
      get city_path(object.id)
      expect(response).to have_http_status(:ok)
      expect(parsed_body["name"]).to eq("test")
    end
  end

  describe "States-backed" do
    before(:each) { State.delete_all }
    after(:each)  { State.delete_all }

    it "create State-backed model" do
      object=State.create(:name=>"test")
      expect(State.find(object.id).name).to eq("test")
    end
    
    it "expose State-backed API resource" do
      object=State.create(:name=>"test")
      expect(states_path).to eq("/api/states")
      get state_path(object.id) 
      expect(response).to have_http_status(:ok)
      expect(parsed_body["name"]).to eq("test")
      expect(parsed_body).to include("created_at")
      expect(parsed_body).to include("id"=>object.id.to_s)
    end
  end
end