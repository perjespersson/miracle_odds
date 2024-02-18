require "clockwork"
require "./config/boot"
require "./config/environment"
require 'active_support/time' # Allow numeric durations (eg: 1.minutes)

module Clockwork
  every(10.seconds, "Fetch Bets") do
    puts "========="
    puts "Hello"
    puts "========="
  end
end