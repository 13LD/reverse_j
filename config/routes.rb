ReverseJ::Engine.routes.draw do
  post '/data/collect' => 'data#convert', as: :reverse_data
end
