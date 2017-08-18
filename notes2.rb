class Greeter

  def initialize
    @kernal = Kernal.new
  end


  def greet
    puts "What is your name?"
    name = @kernal.gets.chomp
    puts "Hello, #{name}"
  end
end
