require_relative '../app/models/task'
require 'faker'

10.times do
  Task.create(what_todo: Faker::Lorem.sentence(word_count = 4), :completed => "[ ]")
end