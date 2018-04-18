require 'rails_helper'

RSpec.describe 'DataController', type: :request do
  it 'data route must work' do
    assert_generates '/data/collect', controller: 'data',
      action: 'convert'
  end

  it 'reverse_data route must work' do
    post reverse_data_path(data: { hey: 'You' })
    res1 = response.body
    post reverse_data_url(data: { hey: 'You' })
    res2 = response.body
    post '/data/collect', params: { data: { hey: 'You' } }
    res3 = response.body
    expect(res1).to eq res2
    expect(res2).to eq res3
  end


  it 'data should be returned in json format' do
    post '/data/collect', params: { data: { one: 'One', two: 'Two' } }
    expect(response).to be_success
    expect(response.body).to eq({ one: 'enO', two: 'owT' }.to_json)
  end
end
