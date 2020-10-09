require 'csv'
require 'tty-prompt'
require 'tty-font'
require 'tty-table'
require 'smarter_csv'
require 'colorize'

require_relative 'methods.rb'
require_relative 'help.rb'

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
      name = output_capture("What is your name?".blue)
      confirm = output_capture("#{the_chore['chore']} done by #{name}. Is this correct? If so. type 'yes'.".blue).downcase
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
    puts 'Which would you like to read,'.light_blue
    answer = output_capture("Chore Types or Chore History?".blue).downcase
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
    new_chore = output_capture("What Chore would you like to add?".blue)
    number = output_capture("Please designate a number!".blue).to_i
    confirm = output_capture("#{new_chore} is to be added with a designation of #{number}. Is that OK?".blue).downcase
    if confirm == 'yes'
      File.write('chore-list.csv', "\n#{number},#{new_chore}", mode: 'a')
      puts "#{new_chore} is in the list!".light_blue
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
      chore_action = output_capture("Type the number of the chore you wish to change.".blue)
      if chore_action == chore_data[:chore]
      end
    rescue TypeError
      puts 'Not working. Back to title menu!'.magenta
    end
  when 5
# ===== DELETE =====
    begin
      chore_list.each do |line|
        puts "#{line['number']}: #{line['chore']}"
        chores.push line['chore']
      end
      answer = output_capture("Type the number of the chore you wish to delete.".blue)
      the_chore = chores.find { |chore| chore['chore'] == answer }
      chores.delete answer
    rescue TypeError
      puts 'Oops. Not working. Back to title menu!'.magenta
    end
# ====== EXIT ======
  when 6
    puts 'Exiting application, are you sure?'.light_blue
    answer = output_capture("If yes, type 'yes'.".blue)
    if (answer == 'yes') || (answer == 'y')
      exit_application
    else
      puts 'Invalid input! Returning to title screen.'.magenta
    end
  end
end
