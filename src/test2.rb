require_relative 'gem_relative.rb'
require 'rspec/autorun'

chores = []

chore_list = CSV.foreach(("chore-list.csv"), headers: true)

loop do
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
    exit
  elsif confirm != "yes"
    puts "Won't save that one. Try again!".light_blue
    exit
  end
rescue NoMethodError
  puts "Whoops! Sorry #{name}, seems the chore you put in didn't exist. Try again!".magenta
  exit
end

rspec.describe "Do Option" do
  context "when user inputs 'do' on title menu" do
    context "chore list CVS file contents are displayed" do
    end
    context "user is asked to type in a relevant number" do
    end
    context "user is then asked to type in their name" do
    end
    context "user is asked to confirm the details" do
    end
    context "if answer is yes"
    context "data is written to cvs" do
    end
  end
  context "if answer is not yes"
  context "user is returned to title screen" do
  end
end
