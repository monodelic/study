# frozen_string_literal: true

module Inatra
  class << self
    def method_missing(method, *args, &req)
      @dest ||= {}
      @dest[method.to_s.upcase] ||= {}
      @dest[method.to_s.upcase][args.first.to_s] = req
    end

    def routes(&req)
      instance_eval(&req)
    end

    def call(env)
      req = @dest[env['REQUEST_METHOD']][env['PATH_INFO']]
      req.call(env)
    end
  end
end
