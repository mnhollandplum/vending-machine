require './lib/vending_machine.rb'

def initialize
  @coins = Array.new(0)
  @machine = VendingMachine.new
end

def welcome
  "Hello, please enter a command:\n"
end

def instructions
  "(c)ontents - Prints the contents of the vending machine.\n
  (i)nsert money - Takes in coins and prints total money inserted.\n
  (v)alid coin values - Prints the valid coins inputs:  Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter.\n
  (p)urchase - Displays a prompt to enter the slot they'd like to purchase."
end

def payments
  puts "Please enter your coin"
  payment = gets.chomp

  if payment == "1"
  elsif payment == "5"
  elsif payment == "10"
  elsif payment == "25"

  else
  puts "That was not a valid payment"
  payments
  end
    binding.pry
  @coins << payment.to_i

  puts "Amount inserted: #{@coins.sum}"
end

puts instructions

loop do
  response = gets.chomp

  if response == "c"
    vending_machine = VendingMachine.new
    puts vending_machine.products

  elsif response == "i"
    payments



  elsif response == "v"
    puts "Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter."
  elsif response == "p"
    puts "Please enter the slot product you would like to purchase. Make sure you have entered the correct amount before you select a product"
  else
    "Please enter a valid command"
  end

  puts "Please enter your next command: #{instructions}"



end
