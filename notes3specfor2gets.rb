describe Greeter do
  it 'greets you' do
    double_kernel = double :kernel
    subject = Greeter.new(double_kernel)
    allow(double_kernel).to receive(:gets).with(1).and_return("Liz\n")
    allow(double_kernel).to receive(:gets).with(2).and_return("Hard\n")
    expect { subject.greet }.to output("What is your name?\nHello, Liz\n")
  end
end
class Greeter
  def initialize(kernel = Kernel)
    @kernel = kernel
  end
  def greet
    puts "What is your name?"
    first_name = @kernel.gets(1).chomp
    last_name = @kernel.gets(2).chomp
    puts "Hello, #{name}"
  end
end
