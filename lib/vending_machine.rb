require 'json'
require 'pry'
class VendingMachine
attr_reader :payment

  def initialize
    @payment = payment
  end

  def products
    File.foreach("data/tiny_vending_machine.json").map do |line|
      JSON.parse(line)['contents'].flatten
    end
  end

  def snack
  end

  def slot
  end
end
