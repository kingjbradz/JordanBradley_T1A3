def output_capture(question)
    puts question
    input = gets.chomp
    return input
end
  
def exit_application
    leaving_font = TTY::Font.new(:standard)
    puts leaving_font.write('GOODBYE!', letter_spacing: 2).yellow
    puts 'Closing application. Thank you!'.red
    exit
end