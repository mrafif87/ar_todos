class Task < ActiveRecord::Base
  def self.completed(id)
    t = Task.find(id)
    t.completed = "[X]"
    t.save!
  end

  def self.delete(id)
    Task.where(id: id).destroy_all
  end

  def self.add(task)
    Task.create(what_todo: task, :completed => "[ ]", created_at: Time.now, updated_at: Time.now)
  end

  def self.list
   t = Task.all
    t.each do |e|
      puts "#{e.id} #{e.completed} #{e.what_todo}"
    end
  end
end
