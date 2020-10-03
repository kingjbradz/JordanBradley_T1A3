require_relative 'gems.rb'

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
