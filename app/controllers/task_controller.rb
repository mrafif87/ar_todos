require_relative '../views/task_view'

class TaskController < ActiveRecord::Base
  def self.list
   t = Task.all
   TaskView.list(t)
  end

  def self.completed(id)
    t = Task.find(id)
    t.completed = "[X]"
    t.save!
    TaskView.completed(t)
  end

  def self.delete(id)
    t = Task.find(id)
    TaskView.delete(t)
    Task.where(id: id).destroy_all
  end

  def self.add(task)
    Task.create(what_todo: task, :completed => "[ ]", created_at: Time.now, updated_at: Time.now)
    t = Task.last
    TaskView.add(t)
  end
end