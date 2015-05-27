require "spec_helper"

describe Lita::Handlers::NopeOctopus, lita_handler: true do

  it { is_expected.to route("nope octopus") }

  it "should respond with the correct url" do
    send_message("nope octopus")
    expect(replies.last).to eq("http://www.reactiongifs.com/wp-content/uploads/2013/02/nope.gif")
  end

end
