require_relative "gemfile.rb"

chores = []

chore_list = CSV.foreach(("chore-list.csv"), headers: true)

title_font = TTY::Font.new(:doom)

chore_data = SmarterCSV.process("chore-list.csv")

prompt = TTY::Prompt.new

puts title_font.write("HOME TASK", letter_spacing: 2).yellow
puts "Welcome to Home Task!".red

loop do
  puts "Please type and enter the feature you wish to use:".light_red
  # prompt.select("What would you like to do?", %w(Do Read Create Edit Delete Exit))
  puts "Do Chore | Read | Create | Edit | Delete | Exit".cyan
  menu_select = gets.chomp.downcase

  case menu_select

  when "do", "do chore", "dochore", "chore"
    begin
    puts "Which Chore would you like to do?".blue
    chore_list.each do |line|
      puts "#{line["number"]}: #{line["chore"]}".green
      chores.push line.to_h
    end
    answer = gets.chomp
    the_chore = chores.find { |chore| chore["number"] == answer }
    puts "What is your name?".blue
    name = gets.chomp
    puts "#{the_chore["chore"]} done by #{name}. Is this correct? If so. type 'yes'.".blue
    confirm = gets.chomp.downcase
    if confirm == "yes"
      File.write("chore-history.csv", "\n#{the_chore["chore"]}, #{name}, #{Time.now}", mode: "a")
      puts "Chore is logged. Thanks #{name}!".blue
    elsif confirm != "yes"
      puts "Won't save that one. Try again!".light_blue
    end
  rescue NoMethodError
    puts "Whoops! Sorry #{name}, seems the chore you put in didn't exist. Try again!".magenta
  end
  when "read"
    puts "Which would you like to read,".blue
    puts "Chore Types or Chore History?".light_blue
    answer = gets.chomp.downcase
    if answer == "chore types" or answer == "chore type"
      chore_list.each do |line|
        table = TTY::Table.new([["#{line["number"]}","#{line["chore"]}"]])
        puts table.render(:ascii, padding: [1,2,1,2], alignments: [:center]).yellow
      end
    elsif answer == "chore history"
      CSV.foreach("chore-history.csv", headers: true) do |line|
        table = TTY::Table.new(["Chore", "Name", "Date & Time"], [["#{line["Chore"]}","#{line["Name"]}","#{line["Date"]}."]])
        puts table.render(:ascii, resize: true, padding: [1,2], alignments: [:center, :center, :center]).cyan
      end
    else
      puts "Invalid. Try again!".magenta
    end
  when "create"
    puts "This is the current chore list.".blue
    chore_list.each do |line|
      puts "#{line["number"]}: #{line["chore"]}".green
    end
    puts "What would you like to add?".blue
    new_chore = gets.chomp
    puts "Please designate a number!".blue
    number = gets.chomp.to_i
    puts "#{new_chore} is to be added".blue
    puts "with a designation of #{number}. Is that OK?".blue
    confirm = gets.chomp.downcase
    if confirm == "yes"
      File.write("chore-list.csv", "\n#{number},#{new_chore}", mode: "a")
      puts "#{new_chore} is in the list!"
    elsif confirm != "yes"
      puts "Not saving. Try again!".light_blue
    end
  when "edit"
    begin
      chore_data.each_with_index do |line|
        chores.push line.to_h
      end
      puts "What do you want to change?"
      chore_action = gets.chomp
    if chore_action = chore_data[:chore]
      puts "woot"
    end
  rescue TypeError
    puts "Not working. Back to title menu!".magenta
  end
    #   the_chore = chores.find { |chore| chore["number"] == answer }
    #   puts "Ok. What to?"
    #   new_chore = gets.chomp
    #   the_chore.index new_chore
    #   File.open("chore-list.csv", "w")
    #   csv = File.open("chore-list".csv, "a")
    #   the_chore.each do |chore|
    #     csv << chore.values
    #   end
    # rescue NoMethodError
    #   puts 'Oops. Not working! Back to title menu.'
    # 
  #   chore_list.each do |chore|
  #     puts "#{chore["number"]}: #{chore["chore"]}"
  #     chores.push chore["chore"]
  #   end
  #   puts "What do you want to change?"
  #   item = gets.chomp
  #   index = chores.index item
  #   puts "What do you need instead?"
  #   chores[index] = gets.chomp
  #   puts "#{chores[index]} is now on the list."
  #   csv = File.write("chore-list.csv", "#{chores}", mode: "a")
  #   chores.each do |chore|
  #     csv << chore
  #   end
  # rescue TypeError
  #   puts "Whoops. Had a problem! Back to main menu."
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
    begin
    puts "Which Chore would you like to delete?".blue
    CSV.foreach(("chore-list.csv"), headers: true) do |line|
      puts "#{line["number"]}: #{line["chore"]}"
      chores.push line['chore']
    end
    puts "What don't you need?"
    answer = gets.chomp.downcase
    the_chore = chores.find { |chore| chore["chore"] == answer }
    chores.delete answer
    rescue TypeError
      puts "Oops. Not working. Back to title menu!".magenta
  #   File.open("chore-list.csv", "w")
  #   csv = File.write("chore-list.csv", "#{chores}", mode: "a")
  #   chores.each do |chore|
  #     csv << chore
  #   end
  # rescue TypeError
  #   puts "Oopsie daisie! Had a problem. Back to title menu."
    #user input
    #check validility - if invalid, output error message
    #output input
    #ask user if OK
    #if no, go to output message
    #if yes, write to CSV chore list file
  end
  when "exit"
    leaving_font = TTY::Font.new(:standard)
    puts "Exiting application, are you sure?".blue
    puts "If yes, type 'yes'.".light_blue
    answer = gets.chomp.downcase
    if answer == "yes" or answer == "y"
      puts leaving_font.write("GOODBYE!", letter_spacing: 2).yellow
      puts "Closing application. Thank you!".red
      exit
    else
      puts "Returning to title screen.".magenta
    end
  else
    puts "Invalid input! Please try again.".magenta
  end
end
