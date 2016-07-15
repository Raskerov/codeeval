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
    counting_kids_and_treats
    counting_treats_per_kid
  end

  def counting_treats_per_kid
    @collected_treats *= @scores[' Houses'].to_i
    treats_per_kid = @collected_treats / @kids
    treats_per_kid.floor
    treats_per_kid
  end

  def counting_kids_and_treats
    variables
    @scores.each do |key, value|
      if key == 'Vampires'
        @collected_treats += value.to_i * 3
        @kids += value.to_i
      elsif key == ' Zombies'
        @collected_treats += value.to_i * 4
        @kids += value.to_i
      elsif key == ' Witches'
        @collected_treats += value.to_i * 5
        @kids += value.to_i
      end
    end
  end

  def variables
    @collected_treats = 0
    @kids = 0
    defining_scores_as_hash
  end

  def defining_scores_as_hash
    @scores = {}
    array = line.split(',')
    array.each do |e|
      key = e.split(':')
      @scores[key[0]] = key[1]
    end
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
