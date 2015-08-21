
class TaskView < ActiveRecord::Base
  def self.list(t)
    t.each do |e|
      puts "#{e.id} #{e.completed} #{e.what_todo}"
    end
  end

  def self.completed(t)
    puts "Task COMPLETED: #{t.id} #{t.what_todo}"
  end

  def self.delete(t)
    puts "Task DELETED: #{t.id} #{t.what_todo}"
  end

  def self.add(t)
    puts "Task ADDED: #{t.id} #{t.what_todo}"
  end


end