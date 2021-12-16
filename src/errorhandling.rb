require_relative './battle'

class MyErrors < StandardError

    begin
        puts "Welcome! What's your username?"
        username = gets.chomp
        while username == ""
            puts "Error, Please enter a username!"
            username = gets.chomp.upcase
        end
        puts `clear`
        puts" Welcome #{username} to ..."
    end
end