# frozen_string_literal: true

require './test/test_helper'
require 'test/unit'
require 'rack/test'
require_relative './inatra'
require_relative './my_app'

class RackTest < Test::Unit::TestCase
  def test_it_says_get
    browser = Rack::Test::Session.new(Rack::MockSession.new(Inatra))
    browser.get '/hello'
    assert browser.last_response.ok?
    assert_equal 'Hello World GET', browser.last_response.body
  end

  def test_it_says_get_dick
    browser = Rack::Test::Session.new(Rack::MockSession.new(Inatra))
    browser.get '/dick'
    assert browser.last_response.ok?
    assert_equal 'Hello Mr.Dick', browser.last_response.body
  end

  def test_it_says_post
    browser = Rack::Test::Session.new(Rack::MockSession.new(Inatra))
    browser.post '/hello'
    assert browser.last_response.ok?
    assert_equal 'Hello World POST', browser.last_response.body
  end

  def test_it_says_put
    browser = Rack::Test::Session.new(Rack::MockSession.new(Inatra))
    browser.put '/hello'
    assert browser.last_response.ok?
    assert_equal 'Hello World PUT', browser.last_response.body
  end

  def test_it_says_patch
    browser = Rack::Test::Session.new(Rack::MockSession.new(Inatra))
    browser.patch '/hello'
    assert browser.last_response.ok?
    assert_equal 'Hello World PATCH', browser.last_response.body
  end

  def test_it_says_delete
    browser = Rack::Test::Session.new(Rack::MockSession.new(Inatra))
    browser.delete '/hello'
    assert browser.last_response.ok?
    assert_equal 'Hello World DELETE', browser.last_response.body
  end
end
