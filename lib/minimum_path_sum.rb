module MinimumPathSum
  def self.calculate(io=$stdin)
    triangle = io.each_line.map { |line| line.split.map(&:to_i) }
    height = triangle.length - 2
    height.downto(0) do |y|
      y.downto(0) do |x|
        triangle[y][x] += [triangle[y+1][x], triangle[y+1][x+1]].min
      end
    end
    triangle[0][0]
  end
end