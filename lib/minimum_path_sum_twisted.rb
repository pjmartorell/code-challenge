require 'prime'

module MinimumPathSumTwisted
  def self.calculate(io=$stdin)
    previous_primes_indexes = 0
    triangle = io.each_line.map { |line| line.split.map(&:to_i) }
    triangle << Array.new(triangle.length + 1, 0)
    height = triangle.length - 2

    height.downto(0) do |y|
      current_primes_indexes = triangle[y].each_index.select{|x| Prime.prime?(triangle[y][x])}
      previous_primes = triangle[y+1].values_at(*previous_primes_indexes)
      y.downto(0) do |x|
        leaps = triangle[y][x] == 13 ? previous_primes : Float::INFINITY
        triangle[y][x] += [triangle[y+1][x], triangle[y+1][x+1], *leaps].min
      end
      previous_primes_indexes = current_primes_indexes
    end
    triangle[0][0]
  end
end