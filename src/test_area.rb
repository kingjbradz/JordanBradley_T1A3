# TESTING AREA FOR EDIT AND DELETE SECTIONS

# frozen_string_literal: true

chore_list = CSV.open('chore-list.csv', headers: true)

chore_data = SmarterCSV.process('chore-list.csv')

chores = []

# puts "What do you want to change?"

chores.push chore_list

# chore_list.each do |chore|
#     puts "#{chore['number']}: #{chore['chore']}"
# puts "what do?"
# item = gets.chomp
# index = chore_list.index item
# chore_list[index] = gets.chomp
# puts "#{chore['number']}: #{chore['chore']}"
# end

# ==========

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

    # ============

          #   File.open("chore-list.csv", "w")
      #   csv = File.write("chore-list.csv", "#{chores}", mode: "a")
      #   chores.each do |chore|
      #     csv << chore
      #   end
      # rescue TypeError
      #   puts "Oopsie daisie! Had a problem. Back to title menu."
