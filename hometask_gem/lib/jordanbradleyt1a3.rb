# frozen_string_literal: true

require_relative 'gem_relative.rb'

chores = []

chore_list = CSV.foreach('chore-list.csv', headers: true)

title_font = TTY::Font.new(:doom)

chore_data = SmarterCSV.process('chore-list.csv')

prompt = TTY::Prompt.new

puts title_font.write('HOME TASK', letter_spacing: 2).yellow
puts 'Welcome to Home Task!'.red

choices = [
  { name: 'Do Chore', value: 1 },
  { name: 'Read', value: 2 },
  { name: 'Create', value: 3 },
  { name: 'Edit', value: 4 },
  { name: 'Delete', value: 5 },
  { name: 'Exit', value: 6 }
]

loop do
  puts 'Please select the feature you wish to use:'.light_red
  menu_select = prompt.select('What would you like to do?', choices)

  case menu_select

  when 1
    # ===== 'DO' ======
    begin
      puts 'Type the number of the chore you wish to do:'.blue
      chore_list.each do |line|
        puts "#{line['number']}: #{line['chore']}".green
        chores.push line.to_h
      end
      answer = gets.chomp
      the_chore = chores.find { |chore| chore['number'] == answer }
      puts 'What is your name?'.blue
      name = gets.chomp
      puts "#{the_chore['chore']} done by #{name}. Is this correct? If so. type 'yes'.".blue
      confirm = gets.chomp.downcase
      if confirm == 'yes'
        File.write('chore-history.csv', "\n#{the_chore['chore']}, #{name}, #{Time.now}", mode: 'a')
        puts "Chore is logged. Thanks #{name}!".blue
      elsif confirm != 'yes'
        puts "Won't save that one. Try again!".light_blue
      end
    rescue NoMethodError
      puts "Whoops! Sorry #{name}, seems the chore you put in didn't exist. Try again!".magenta
    end
# ===== READ ======
  when 2
    puts 'Which would you like to read,'.blue
    puts 'Chore Types or Chore History?'.light_blue
    answer = gets.chomp.downcase
    if (answer == 'chore types') || (answer == 'chore type')
      chore_list.each do |line|
        table = TTY::Table.new([[(line['number']).to_s, (line['chore']).to_s]])
        puts table.render(:ascii, padding: [1, 2, 1, 2], alignments: [:center]).yellow
      end
    elsif answer == 'chore history'
      CSV.foreach('chore-history.csv', headers: true) do |line|
        table = TTY::Table.new(['Chore', 'Name', 'Date & Time'], [[(line['Chore']).to_s, (line['Name']).to_s, "#{line['Date']}."]])
        puts table.render(:ascii, resize: true, padding: [1, 2], alignments: %i[center center center]).cyan
      end
    else
      puts 'Invalid. Try again!'.magenta
    end
# ===== CREATE ====
  when 3
    puts 'This is the current chore list.'.blue
    chore_list.each do |line|
      puts "#{line['number']}: #{line['chore']}".green
    end
    puts 'What would you like to add?'.blue
    new_chore = gets.chomp
    puts 'Please designate a number!'.blue
    number = gets.chomp.to_i
    puts "#{new_chore} is to be added".blue
    puts "with a designation of #{number}. Is that OK?".blue
    confirm = gets.chomp.downcase
    if confirm == 'yes'
      File.write('chore-list.csv', "\n#{number},#{new_chore}", mode: 'a')
      puts "#{new_chore} is in the list!"
    elsif confirm != 'yes'
      puts 'Not saving. Try again!'.light_blue
    end
# ===== EDIT =====
  when 4
    begin
      chore_list.each do |line|
        puts "#{line['number']}: #{line['chore']}"
        chores.push line.to_h
      end
      puts 'Type the number of the chore you wish to change.'
      chore_action = gets.chomp
      if chore_action == chore_data[:chore]
      end
    rescue TypeError
      puts 'Not working.
       Back to title menu!'.magenta
    end
    # output chore list
    # user input
    # check validility - if invalid, output error message
    # ask user what input would like to change to
    # input new name
    # output input
    # ask user if OK
    # if no, go to output message
    # if yes, save to CSV chore list file

  when 5
# ===== DELETE =====
    begin
      puts 'Type the number of the chore you wish to delete:'.blue
      chore_list.each do |line|
        puts "#{line['number']}: #{line['chore']}"
        chores.push line['chore']
      end
      answer = gets.chomp.downcase
      the_chore = chores.find { |chore| chore['chore'] == answer }
      chores.delete answer
    rescue TypeError
      puts 'Oops. Not working. Back to title menu!'.magenta
      # user input
      # check validility - if invalid, output error message
      # output input
      # ask user if OK
      # if no, go to output message
      # if yes, write to CSV chore list file
    end
# ====== EXIT ======
  when 6
    leaving_font = TTY::Font.new(:standard)
    puts 'Exiting application, are you sure?'.blue
    puts "If yes, type 'yes'.".light_blue
    answer = gets.chomp.downcase
    if (answer == 'yes') || (answer == 'y')
      puts leaving_font.write('GOODBYE!', letter_spacing: 2).yellow
      puts 'Closing application. Thank you!'.red
      exit
    else
      puts 'Invalid input! Returning to title screen.'.magenta
    end
  end
end
