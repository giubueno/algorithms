RSpec.describe GameOfLife do

# [0,1,0]
# [0,0,1]
# [1,1,1]
# [0,0,0]

  describe "#will_live?" do
    let(:board) { [[0,1,0],[0,0,1],[1,1,1],[0,0,0]] }
    let(:m) { board.length }
    let(:x) { 3 }
    let(:n) { board[x].length }
    let(:y) { 1 }
    subject { GameOfLife::will_live?(board, m, n, x, y) }

    it { expect(subject).to be(true) }
  end

  describe "#game_of_life" do
    let(:board) { [[0,1,0],[0,0,1],[1,1,1],[0,0,0]] }
    subject { GameOfLife::game_of_life(board) }

    it { expect(subject).to eq([[0,0,0],[1,0,1],[0,1,1],[0,1,0]]) }
  end
end
