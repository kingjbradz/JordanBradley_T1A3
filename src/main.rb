require 'csv'
require 'json'
require 'tabulo'
require 'colorize'

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
    #if no, redo  
    #if yes, save to JSON chore history file with time and date
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
        #output history from chore_history.json to screen
    else 
        puts "Invalid answer. Try again!"
    end
end



def create
    puts "What new Chore would you like to create?"
    new_chore = gets.chomp.downcase
    puts "#{new_chore}"
    puts "Save to Chore List?"
    answer = gets.chomp.downcase
    if answer == "yes" or answer == "y"
    CSV.write("chore-list.csv", new_chore.push("\n"), mode: "a")
    #user input
    #output input 
    #ask user if OK
    #if no, go to output message 
    #if yes, save to CSV chore list file
    end
end

def edit
    begin
    puts "Which Chore would you like to edit?"
    CSV.foreach(("chore-list.csv"), headers: true) do |line|
        chore_list = ChoreList.new(line["number"], line["chore"])
        puts "#{line['number']}: #{line['chore']}"
    end
    answer = gets.chomp.downcase
    #output chore list
    #user input
    #check validility - if invalid, output error message
    #ask user what input would like to change to
    #input new name 
    #output input
    #ask user if OK
    #if no, go to output message 
    #if yes, save to CSV chore list file
    end
end

def delete
    puts "Which Chore would you like to delete?"
    CSV.foreach(("chore-list.csv"), headers: true) do |line|
        chore_list = ChoreList.new(line["number"], line["chore"])
        puts "#{line['number']}: #{line['chore']}"
    end
    answer = gets.chomp.downcase
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
    
    puts "Welcome to Home Task"
    puts "Please type and enter the feature you wish to use:"
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