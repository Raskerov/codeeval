class Task
  attr_reader :line

  def initialize(line)
    @line = line
  end

  def to_s
    total.to_s
  end

  def total
    numbers.reduce(&:+)
  end

  private

  def numbers
    line.split(//).map(&:to_i)
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
