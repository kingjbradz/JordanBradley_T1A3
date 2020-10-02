
require_relative "gemfile.rb"



def do_section
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
end


describe do_section do
    it "does chores" do
    end
end
