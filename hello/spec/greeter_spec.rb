class RSpecGreeter
  def greet
    "Hello RSpec!"
  end
end

describe "RSpec Greeter" do
  it "should say 'Hello RSpec!' when it recives the greet() message" do
    greeter = RSpecGreeter.new
    greeting = greeter.greet
    expect(greeting) == "Hello Rspec!"
  end
end

# Note that book uses old RSpec with the should method - new RSpec uses expect()
# so I've made that change here.
