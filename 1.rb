require 'pry'
class Task
  attr_reader :line

  def initialize(line)
    @line = line
  end

  def to_s
    output.to_s
  end

  private

  def output
    (1..upto).map { |i| fizz_buzz(i) }.join(" ")
  end

  def fizz_buzz(input)
    return 'FB' if input % fizzbuzz_divider == 0
    return 'B' if input % buzz_divider == 0
    return 'F' if input % fizz_divider == 0
    input
  end

  def fizzbuzz_divider
    fizz_divider * buzz_divider
  end

  def fizz_divider
    numbers[0]
  end

  def buzz_divider
    numbers[1]
  end

  def upto
    numbers[2]
  end

  def numbers
    @numbers ||= line.split(' ').map(&:to_i)
  end
end

class Reader
  def self.input_line(&block)
    input_file.each_line do |line|
      block.call(line.chomp)
    end
  end

  def self.input_file
    File.open(file_path, 'r')
  end

  def self.file_path
    ARGV[0]
  end
end

Reader.input_line do |line|
  puts Task.new(line)
end
