# Kata from https://leetcode.com/problems/container-with-most-water/
module ContainerWithMostWater
  class Solution
    attr_reader :heights

    def initialize(heights)
      self.heights = heights
    end

    def brute_force
      area = 0
      (0...heights.length).each { |a|
          next if a == heights.length - 1

          ((a + 1)...heights.length).each { |b|
              area = max(area, calculate_area(heights[a], heights[b], b - a))
          }
      }
      area
    end

    def optmized
      left = 0
      right = heights.length - 1
      area = 0

      changed = true # avoid infinite loop if none of the sides is updated

      while left < right && changed do
        puts "left: #{left}, right: #{right}"
        area = max(area, calculate_area(heights[left], heights[right], right - left))

        changed = false

        if heights[left] < heights[left + 1]
          left += 1
          changed = true
        end

        if heights[right] < heights[right - 1]
          right -= 1
          changed = true
        end
      end

      area
    end

    private

    def max(a, b)
      a >= b ? a : b
    end

    def calculate_area(a, b, distance)
      side = a < b ? a : b # set the smaller one as a side
      side * distance
    end

    attr_writer :heights
  end
end
