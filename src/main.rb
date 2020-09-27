
require 'csv'




class User
end

def do_chore
    
end

def read
    puts "Which would you like to read,"
    puts "Chore Types or Chore History?"
    answer = gets.chomp.downcase
    if answer == "chore types"
        puts "poo"
    elsif answer == "chore history"
        puts "shit"
    end
end


def create
end

def edit
end

def delete
end

def exit
end

loop do
    
    puts "Welcome to Home Task Manager"
    puts "Please type and enter the feature you wish to use"
    puts "Do | Read | Create | Edit | Delete | Exit"
    menu_select = gets.chomp.downcase

    case menu_select

    when "do"
        do_chore

    when "read"
        read
    
    when "create"
        create

    when "edit"
        edit

    when "delete"
        delete
        
    when "exit"
        exit
    
    end
end