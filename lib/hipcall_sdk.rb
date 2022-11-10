# frozen_string_literal: true

require_relative "hipcall/version"

module HipcallSdk
  autoload :Client, "hipcall/client"
  autoload :Collection, "hipcall/collection"
  autoload :Error, "hipcall/error"
  autoload :Object, "hipcall/object"
  autoload :Resource, "hipcall/resource"


  autoload :Cdr, "hipcall/objects/cdr"
  autoload :Number, "hipcall/objects/number"
  autoload :Task, "hipcall/objects/task"
  autoload :User, "hipcall/objects/user"

  autoload :CdrResource, "hipcall/resources/cdrs"
  autoload :NumberResource, "hipcall/resources/numbers"
  autoload :TaskResource, "hipcall/resources/tasks"
  autoload :UserResource, "hipcall/resources/users"
end