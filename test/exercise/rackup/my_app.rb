# frozen_string_literal: true

Inatra.routes do
  get '/hello' do
    [200, {}, ['Hello World GET']]
  end
  post '/hello' do
    [200, {}, ['Hello World POST']]
  end
  put '/hello' do
    [200, {}, ['Hello World PUT']]
  end
  patch '/hello' do
    [200, {}, ['Hello World PATCH']]
  end
  delete '/hello' do
    [200, {}, ['Hello World DELETE']]
  end
end
