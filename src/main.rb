require "csv"
require "json"
require "tabulo"
require "colorize"

chores = []

chore_list = CSV.foreach(("chore-list.csv"), headers: true)

loop do
  puts "Welcome to Home Task!".red
  puts "Please type and enter the feature you wish to use:".light_red
  puts "Do Chore | Read | Create | Edit | Delete | Exit".cyan
  menu_select = gets.chomp.downcase

  case menu_select

  when "do", "do chore", "dochore", "chore"
    puts "Which Chore would you like to do?".blue
    chore_list.each do |line|
      puts "#{line["Number"]}: #{line["Chore"]}".green
      chores.push line.to_h
    end
    answer = gets.chomp
    the_chore = chores.find { |chore| chore["Number"] == answer }
    # if value is not valid
    #  output "Invalid! Try again."
    # return to start of section
    # end
    puts "What is your name?".blue
    name = gets.chomp
    puts "#{the_chore["Chore"]} done by #{name}. Is this correct?".blue
    confirm = gets.chomp.downcase
    if confirm == "yes"
      File.write("chore-history.csv", "\n#{the_chore["Chore"]}, #{name}, #{Time.now}", mode: "a")
      puts "Chore is logged. Thanks #{name}!".blue
      # else
      #  if value answer is not yes
      # return to start of loop
    end
  when "read"
    puts "Which would you like to read,".blue
    puts "Chore Types or Chore History?".light_blue
    answer = gets.chomp.downcase
    if answer == "chore types" or answer == "chore type"
      chore_list.each do |line|
        puts "#{line["Number"]}: #{line["Chore"]}".green
      end
    elsif answer == "chore history"
      CSV.foreach("chore-history.csv", headers: true) do |line|
        puts "#{line["Chore"]} done by#{line["Name"]} at#{line["Date"]}.".green
      end
    end
  when "create"
    puts "This is the current chore list.".blue
    chore_list.each do |line|
      puts "#{line["Number"]}: #{line["Chore"]}".green
    end
    puts "What would you like to add?".blue
    item = gets.chomp
    #check if item exists
    #if yes, go to start
    #if no, continue
    #ask if user is satisfied
    #if yes, append to CVS file
    #if no, start from beginning

  when "edit"
    puts "Which Chore would you like to edit?".blue
    CSV.foreach(("chore-list.csv"), headers: true) do |line|
      puts "#{line["Number"]}: #{line["Chore"]}"
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
  when "delete"
    puts "Which Chore would you like to delete?".blue
    CSV.foreach(("chore-list.csv"), headers: true) do |line|
      puts "#{line["Number"]}: #{line["Chore"]}"
      chores.push line.to_h
    end
    answer = gets.chomp.downcase
    #user input
    #check validility - if invalid, output error message
    #output input
    #ask user if OK
    #if no, go to output message
    #if yes, write to CSV chore list file
  when "exit"
    puts "Exiting application, are you sure?".blue
    puts "If yes, type 'yes'.".light_blue
    answer = gets.chomp.downcase
    if answer == "yes" or answer == "y"
      puts "Closing application. Thank you!".yellow
      exit
    else
      puts "Returning to title screen.".magenta
    end
  else
    puts "Invalid input"
  end
end
