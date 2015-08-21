require_relative 'config/application'
require_relative 'app/models/task'
puts "Put your application code in #{File.expand_path(__FILE__)}"

class Todo < ActiveRecord::Base
  t = Todo.all
end
