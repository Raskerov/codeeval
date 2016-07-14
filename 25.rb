def input_line(&block)
  input_file.each_line do |line|
    block.call(line.chomp)
  end
end

def input_file
  File.open(file_path, 'r')
end

def file_path
  ARGV[0]
end

input_line do |line|
  sum = 0
  array_of_numbers = line.split(//)
  array_of_numbers.each do |x|
    sum += x.to_i
  end
  puts sum
end
