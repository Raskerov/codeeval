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
    sentence_swaped
  end

  def sentence_swaped
    sentence_swap_operation
    @sentence
  end

  def sentence_swap_operation
    arrays_and_variables
    sentence_swap_loop
  end

  def sentence_swap_loop
    while @i <= @word.length
      @sentence << if @mask[@i] =~ /1/
                     @word[@i].to_s.upcase
                   else
                     @word[@i].to_s
                  end
      @i += 1
    end
  end

  def arrays_and_variables
    array = line.split(' ')
    @word = array[0].split('')
    @mask = array[1].split('')
    @i = 0
    @sentence = ''
  end
end

Reader.input_line do |line|
  puts Task.new(line)
end
