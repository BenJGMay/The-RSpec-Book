class Output
  def messages
    @messages ||= []
  end
  def puts(message)
    messages << message
  end
end
def output
  @output ||= Output.new
end

Given("I am not yet playing") do
end

When("I start a new game") do
  game = Codebreaker::Game.new(output)
  game.start
end

Then("I should see {string}") do |message|
  #expect(@output.messages).to include message
  expect(Output.new.messages).to include message
end
