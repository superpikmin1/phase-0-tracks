require_relative 'word_game'

describe Word_Game do
  let(:game) { Word_Game.new("Banana") }

  it "prints out '-' equal to length of word" do
    expect(game.transform).to eq "------"
  end

  it "updates guessed letters into word progression" do
  	expect(game.update("a")).to eq "-a-a-a"
  end
end