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
    new_line = sentence_swap_operation
  end

  def sentence_swap_operation
    letters_index = 0
    sentence.each.with_object('') do |char, object|
      object << if letters_index.even? && char =~ /[a-z]/
        char.upcase
      else
        char
      end
        letters_index += 1 if char =~ /[a-z]/
    end
  end

  def sentence
    line.downcase!.split(//)
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
