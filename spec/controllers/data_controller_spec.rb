require 'rails_helper'

RSpec.describe 'DataController', type: :request do

  it 'data should be returned in json format' do
    post '/data/collect', params: { data: { key1: 'value', ​key2: 'VALUE' } }
    expect(response).to be_success
    expect(response.body).to eq({ key1: 'eulav', ​key2: 'EULAV' }.to_json)
  end
end
