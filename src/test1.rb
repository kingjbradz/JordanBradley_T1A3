require_relative "gemfile.rb"

chore_list = CSV.foreach(("chore-list.csv"), headers: true)

loop do
  puts "Which would you like to read,".blue
  puts "Chore Types or Chore History?".light_blue
  puts "You may also exit by typing 'exit'.".red
  answer = gets.chomp.downcase
  if answer == "chore types" or answer == "chore type"
    chore_list.each do |line|
      table = TTY::Table.new([["#{line["number"]}", "#{line["chore"]}"]])
      puts table.render(:ascii, padding: [1, 2, 1, 2], alignments: [:center]).yellow
    end
  elsif answer == "chore history"
    CSV.foreach("chore-history.csv", headers: true) do |line|
      table = TTY::Table.new(["Chore", "Name", "Date & Time"], [["#{line["Chore"]}", "#{line["Name"]}", "#{line["Date"]}."]])
      puts table.render(:ascii, resize: true, padding: [1, 2], alignments: [:center, :center, :center]).cyan
    end
  elsif answer == "exit"
    puts "Bye bye!".blue
    exit
  else
    puts "Invalid. Try again!".magenta
  end
end

rspec.describe "read" do
  context "when user enters read section" do
    it "displays first message" do
    end
  end
  context "when user types in chore types" do
    it "displays chore types" do
    end
  end
  context "when user types in chore history" do
    it "displays chore history" do
    end
  end
  context "when user types in invalid input" do
    it "displays error message" do
    end
  end
  context "exit" do
    it "displays goodbye message" do
      it "exits application" do
      end
    end
  end
end
