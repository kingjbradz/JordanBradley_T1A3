require 'csv'

class ChoreHistory
end


class ChoreList
    def initialize(number, chore)
        @number = number
        @chore = chore
    end
end


def do_chore
    begin
    puts "Which Chore would you like to do?"
    CSV.foreach(("chore-list.csv"), headers: true) do |line|
        chore_list = ChoreList.new(line["number"], line["chore"])
        puts "#{line['number']}: #{line['chore']}"
    end
    answer = gets.chomp.downcase
    
        puts "#{answer}"
    
    #check validility - if invalid, output error message
    #user input name
    #output input 
    #ask user if OK
    #if no, go to output message 
    #if yes, save to CSV chore history file
end
end

def read
        puts "Which would you like to read,"
        puts "Chore Types or Chore History?"
        answer = gets.chomp.downcase
    if answer == "chore types" or answer == "chore type"
        CSV.foreach(("chore-list.csv"), headers: true) do |line|
            chore_list = ChoreList.new(line["number"], line["chore"])
            puts "#{line['number']}: #{line['chore']}"
        end
    elsif answer == "chore history"
        puts "placeholder"
        #output history from chore_history.cvs to screen
    else 
        puts "Invalid answer. Try again!"
    end
end


def create
    puts "What new Chore would you like to create?"
    #user input
    #output input 
    #ask user if OK
    #if no, go to output message 
    #if yes, save to CSV chore list file
end

def edit
    puts "Which Chore would you like to edit?"
    #output chore_list
    #user input
    #check validility - if invalid, output error message
    #ask user what input would like to change to
    #input new name 
    #output input
    #ask user if OK
    #if no, go to output message 
    #if yes, save to CSV chore list file
end

def delete
    puts "Which Chore would you like to delete?"
    #output chore_list
    #user input
    #check validility - if invalid, output error message
    #output input 
    #ask user if OK
    #if no, go to output message 
    #if yes, write to CSV chore list file
end

def exit_message
        puts "Exiting application, are you sure? If yes, type 'yes'."
        answer = gets.chomp.downcase
    if answer == "yes" or answer == "y"
        puts "Closing application. Thank you!"
        exit
    else  
        puts "Returning to title screen."
    end
end

loop do
    
    puts "Welcome to Home Task Manager"
    puts "Please type and enter the feature you wish to use"
    puts "Do Chore | Read | Create | Edit | Delete | Exit"
    menu_select = gets.chomp.downcase

    case menu_select

    when "do", "do chore", "dochore", "chore"
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
        exit_message
    
    end
end