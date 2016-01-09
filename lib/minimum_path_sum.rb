require 'prime'

module MinimumPathSum
  def self.calculate(io=$stdin, twisted=false)
    @triangle = io.each_line.map { |line| line.split.map(&:to_i) }
    previous_primes_indexes = get_primes_indexes(-1)

    (@triangle.length - 2).downto(0) do |y|
      current_primes_indexes = get_primes_indexes(y) if twisted
      y.downto(0) do |x|
        primes_indexes = previous_primes_indexes if twisted && @triangle[y][x] == 13
        @triangle[y][x] += @triangle[y+1].values_at(x, x+1, *primes_indexes).min
      end
      previous_primes_indexes = current_primes_indexes
    end
    @triangle[0][0]
  end

  private
  def self.get_primes_indexes(row)
    @triangle[row].each_with_index.select{|e,i| Prime.prime?(e)}.map(&:last)
  end
end