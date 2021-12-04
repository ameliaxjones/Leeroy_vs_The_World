require "tty-prompt"


#Title
puts "
██╗░░░░░███████╗███████╗██████╗░░█████╗░██╗░░░██╗  
██║░░░░░██╔════╝██╔════╝██╔══██╗██╔══██╗╚██╗░██╔╝  
██║░░░░░█████╗░░█████╗░░██████╔╝██║░░██║░╚████╔╝░  
██║░░░░░██╔══╝░░██╔══╝░░██╔══██╗██║░░██║░░╚██╔╝░░  
███████╗███████╗███████╗██║░░██║╚█████╔╝░░░██║░░░  
╚══════╝╚══════╝╚══════╝╚═╝░░╚═╝░╚════╝░░░░╚═╝░░░  

██╗░░░██╗░██████╗
██║░░░██║██╔════╝
╚██╗░██╔╝╚█████╗░
░╚████╔╝░░╚═══██╗
░░╚██╔╝░░██████╔╝
░░░╚═╝░░░╚═════╝░

████████╗██╗░░██╗███████╗  ░██╗░░░░░░░██╗░█████╗░██████╗░██╗░░░░░██████╗░
╚══██╔══╝██║░░██║██╔════╝  ░██║░░██╗░░██║██╔══██╗██╔══██╗██║░░░░░██╔══██╗
░░░██║░░░███████║█████╗░░  ░╚██╗████╗██╔╝██║░░██║██████╔╝██║░░░░░██║░░██║
░░░██║░░░██╔══██║██╔══╝░░  ░░████╔═████║░██║░░██║██╔══██╗██║░░░░░██║░░██║
░░░██║░░░██║░░██║███████╗  ░░╚██╔╝░╚██╔╝░╚█████╔╝██║░░██║███████╗██████╔╝
░░░╚═╝░░░╚═╝░░╚═╝╚══════╝  ░░░╚═╝░░░╚═╝░░░╚════╝░╚═╝░░╚═╝╚══════╝╚═════╝░"

#menu


def select_option 
    prompt = TTY::Prompt.new
    prompt.select("Main Menu") do |menu|
        menu.choice "New Game"
        menu.choice "Help"
        menu.choice "Exit"
    end
end
select_option
# system "clear"
# option = ""
# while option != "Exit"
#     #invokes the menu and stores the option in the variable
#     option = select_option
#     #case statement to handle the options of the menu
#     case option
#         when "Ladder"
#             $league.print_ladder
#         when "Team's info"
#             team = select_team
#             team.full_info
#         when "Play game"
#             home = select_team
#             away = select_team
#             mode = select_game_mode
#             play_game(home, away, mode)
#             #puts "Play game"
#         when "Train"
#             team = select_team
#             team.train
#         else
#             puts "See you next time..."
#             next
#     end
#     print "Press Enter key to continue..."
#     gets
#     system "clear"
# end