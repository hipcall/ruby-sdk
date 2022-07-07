# frozen_string_literal: true

require_relative "hipcall/version"

module Hipcall
  autoload :Client, "hipcall/client"
  autoload :Collection, "hipcall/collection"
  autoload :Error, "hipcall/error"
  autoload :Object, "hipcall/object"
  autoload :Resource, "hipcall/resource"

  autoload :Task, "hipcall/objects/task"
  autoload :User, "hipcall/objects/user"

  autoload :TaskResource, "hipcall/resources/tasks"
  autoload :UserResource, "hipcall/resources/users"
end