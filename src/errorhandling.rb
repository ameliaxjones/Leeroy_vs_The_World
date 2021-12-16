require_relative './battle'
require 'tty-prompt'
require 'tty-font'

class MyErrors < StandardError

    begin
        puts "Welcome! What's your username?"
        username = gets.chomp
        while username == ""
            puts "Error, Please enter a username!"
            username = gets.chomp.upcase
        end
        puts `clear`
        font = TTY::Font.new(:straight)
        pastel = Pastel.new
        puts pastel.red(font.write("Welcome   #{username.capitalize}      to  ..."))
    end
end