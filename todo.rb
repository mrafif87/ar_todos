require_relative 'config/application'
require_relative 'app/controllers/task_controller'
# puts "Put your application code in #{File.expand_path(__FILE__)}"

require 'active_record'
#require_relative '../db/config'




class Main
  def self.start
    @command = ARGV
    execute_command
  end

  def self.execute_command
    case @command[0]
    when "list"
     TaskController.list
    when "add"
      TaskController.add(@command[1..-1].join(" "))
    when "delete"
      TaskController.delete(@command[1])
    when "complete"
      TaskController.completed(@command[1].to_i)
    else
      puts "What do you mean"
    end
  end
end


Main.start