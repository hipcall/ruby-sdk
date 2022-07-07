# frozen_string_literal: true

require_relative "hipcall/version"

module Hipcall
  autoload :Client, "hipcall/client"
  autoload :Collection, "hipcall/collection"
  autoload :Error, "hipcall/error"
  autoload :Object, "hipcall/object"

  autoload :Tasks, "hipcall/objects/tasks"
end