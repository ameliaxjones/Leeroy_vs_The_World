#! /bin/bash
#checking for parameter 
if [ -z $1 ]; then
    echo "Starting game"
    echo ""
    #run game
    ruby index.rb
elif
    [[ $1 == "install" ]]; then
    echo "installing gems"
    #remove Gemfile.lock
    rm Gemfile.lock
    #install bundle
    gem install bundle
    #install the gems
    bundle install
elif #show help menu if 'help' is used
    [[ $1 == "help" ]]; then
    echo "Usage:"
    echo "Install - ./run.sh install"
    echo "Help - ./run.sh help"
    echo "Run Game - ./run.sh"
fi

