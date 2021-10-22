require_relative "spec_helper"

describe Board do
  describe "#display_board" do
    it "should print the board" do
      expect do
        Board.new.display_board
      end.to output("\n  1 | 2 | 3\n-------------\n  4 | 5 | 6\n-------------\n  7 | 8 | 9\n\n").to_stdout
    end
  end
end