# frozen_string_literal: true

require_relative "hipcall/version"

module HipcallSdk
  autoload :Client, "hipcall/client"
  autoload :Collection, "hipcall/collection"
  autoload :Error, "hipcall/error"
  autoload :Object, "hipcall/object"
  autoload :Resource, "hipcall/resource"

  autoload :Call, "hipcall/objects/call"
  autoload :Contact, "hipcall/objects/contact"
  autoload :Company, "hipcall/objects/company"
  autoload :Comment, "hipcall/objects/comment"
  autoload :Extension, "hipcall/objects/extension"
  autoload :Greeting, "hipcall/objects/greeting"
  autoload :Number, "hipcall/objects/number"
  autoload :Tag, "hipcall/objects/tag"
  autoload :Task, "hipcall/objects/task"
  autoload :Team, "hipcall/objects/team"
  autoload :User, "hipcall/objects/user"

  autoload :CallResource, "hipcall/resources/calls"
  autoload :ContactResource, "hipcall/resources/contacts"
  autoload :CompanyResource, "hipcall/resources/companies"
  autoload :CommentResource, "hipcall/resources/comments"
  autoload :ExtensionResource, "hipcall/resources/extensions"
  autoload :GreetingResource, "hipcall/resources/greetings"
  autoload :NumberResource, "hipcall/resources/numbers"
  autoload :TaskResource, "hipcall/resources/tasks"
  autoload :TeamResource, "hipcall/resources/teams"
  autoload :UserResource, "hipcall/resources/users"
end