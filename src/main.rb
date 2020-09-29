require 'csv'
require 'json'
require 'tabulo'
require 'colorize'


chores = []


def read
        puts "Which would you like to read,"
        puts "Chore Types or Chore History?"
        answer = gets.chomp.downcase
    if answer == "chore types" or answer == "chore type"
        CSV.foreach(("chore-list.csv"), headers: true) do |line|
            puts "#{line['number']}: #{line['chore']}"
        end
    elsif answer == "chore history"
        File.open("chore-history.json", mode: "r") do |line|
            p "#{line}"
        end
    end
end



def create
    puts "What new Chore would you like to create?"
    new_chore = gets.chomp.downcase
    puts "#{new_chore}"
    puts "Save '#{new_chore}' to Chore List?"
    answer = gets.chomp
    if answer == "yes" or answer == "y"
    File.open("chore-list.csv", "a") 
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
        puts "#{line['number']}: #{line['chore']}"
        chores.push line.to_h
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
        puts "#{line['number']}: #{line['chore']}"
        chores.push line.to_h
    end
    answer = gets.chomp.downcase
    #user input
    #check validility - if invalid, output error message
    #output input 
    #ask user if OK
    #if no, go to output message 
    #if yes, write to CSV chore list file
end

loop do
    
    puts "Welcome to Home Task"
    puts "Please type and enter the feature you wish to use:"
    puts "Do Chore | Read | Create | Edit | Delete | Exit"
    menu_select = gets.chomp.downcase

    case menu_select

    when "do", "do chore", "dochore", "chore"
        puts "Which Chore would you like to do?"
        CSV.foreach(("chore-list.csv"), headers: true, ) do |line|
            puts "#{line['number']}: #{line['chore']}"
            chores.push line.to_h
        end
        answer = gets.chomp
        puts chores.find { |chore| chore['number'] == answer } 
        puts "What is your name?"
        name = gets.chomp
        puts "#{answer} done by #{name}. Is this correct?"
        confirm = gets.chomp
        if confirm == 'yes'
            File.write("chore-history.json", "#{answer}, #{name}, #{Time.now}",  mode: "a")
        else
            
        end
        #check validility - if invalid, output error message
        #ask user if OK
        #if no, redo  

    when "read"
        read
    
    when "create"
        create

    when "edit"
        edit

    when "delete"
        delete
        
    when "exit"
        puts "Exiting application, are you sure? If yes, type 'yes'."
        answer = gets.chomp.downcase
    if answer == "yes" or answer == "y"
        puts "Closing application. Thank you!"
        exit
    else  
        puts "Returning to title screen."
    end
    
    end
end