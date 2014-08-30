Rails.application.routes.draw do
  post '/call', to: 'call#make_call'
  get '/', to: 'call#index'
end
