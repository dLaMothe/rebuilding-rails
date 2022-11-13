# frozen_string_literal: true

require 'rulers/version'
require 'rulers/array'
require 'rulers/routing'
require 'rulers/util'
require 'rulers/dependencies'

module Rulers
  # rubocop:disable Metrics/MethodLength
  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404,
                { 'Content-Type' => 'text/html' }, []]
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      begin
        text = controller.send(act)
      rescue StandardError
        return [500,
                { 'Content-Type' => 'text/html' }, ['Everything exploded']]
      end
      [200, { 'Content-Type' => 'text/html' },
       [text]]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    attr_reader :env
  end
end
