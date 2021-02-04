# Code Kata from https://leetcode.com/problems/game-of-life
module GameOfLife
  def self.will_live?(board, m, n, x, y)
    sum = 0

    if x > 0
      sum += board[x - 1][y - 1] if y > 0
      sum += board[x - 1][y]
      sum += board[x - 1][y + 1] if y < n - 1
    end

    sum += board[x][y + 1] if y < n - 1
    sum += board[x][y - 1] if y > 0

    if x < m - 1
      sum += board[x + 1][y + 1] if y < n - 1
      sum += board[x + 1][y]
      sum += board[x + 1][y - 1] if y > 0
    end

    if board[x][y] > 0
      return sum == 2 || sum == 3
    else
      sum == 3
    end
  end

  def self.game_of_life(board)
      m = board.length
      original = board.clone.map(&:clone)

      (0...m).each { |x|
          n = board[x].length
          (0...n).each { |y|
            board[x][y] = will_live?(original, m, n, x, y) ? 1 : 0
          }
      }

      board
  end
end
