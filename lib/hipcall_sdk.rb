# frozen_string_literal: true

require_relative "hipcall/version"

module HipcallSdk
  autoload :Client, "hipcall/client"
  autoload :Collection, "hipcall/collection"
  autoload :Error, "hipcall/error"
  autoload :Object, "hipcall/object"
  autoload :Resource, "hipcall/resource"

  autoload :Cdr, "hipcall/objects/cdr"
  autoload :Comment, "hipcall/objects/comment"
  autoload :Extension, "hipcall/objects/extension"
  autoload :Greeting, "hipcall/objects/greeting"
  autoload :Number, "hipcall/objects/number"
  autoload :Task, "hipcall/objects/task"
  autoload :Team, "hipcall/objects/team"
  autoload :User, "hipcall/objects/user"

  autoload :CdrResource, "hipcall/resources/cdrs"
  autoload :CommentResource, "hipcall/resources/comments"
  autoload :ExtensionResource, "hipcall/resources/extensions"
  autoload :GreetingResource, "hipcall/resources/greetings"
  autoload :NumberResource, "hipcall/resources/numbers"
  autoload :TaskResource, "hipcall/resources/tasks"
  autoload :TeamResource, "hipcall/resources/teams"
  autoload :UserResource, "hipcall/resources/users"
end