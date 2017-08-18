require 'notes2'

describe Greeter do

it 'returns hello name' do
  let(:kernal) { kernal.new }
  allow(:kernal).to_recieve(:gets).and_return "Bubble"
  let(:greet) { Greeter.new }
  expect(greet.greet).to eq "Hello, Bubble"
end

end


describe Greeter do
  it 'greets you' do
    double_kernel = double :kernel
    subject = Greeter.new(double_kernel)
    allow(double_kernel).to receive(:gets).and_return("Liz\n")
    expect { subject.greet }.to output("What is your name?\nHello, Liz\n")
  end
end
class Greeter
  def initialize(kernel = Kernel)
    @kernel = kernel
  end
  def greet
    puts "What is your name?"
    name = @kernel.gets.chomp
    puts "Hello, #{name}"
  end
end
