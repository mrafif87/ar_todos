require_relative '../app/models/task'
require 'faker'

9.times do
  Task.create(what_todo: Faker::Lorem.sentence(3))
end
