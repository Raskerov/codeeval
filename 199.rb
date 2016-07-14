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
  array = line.split(" ")
  word = array[0].split('')
  pattern = array[1].split('')

i = 0
output = String.new

while i <= word.length
  if pattern[i] =~ /1/
    output << word[i].to_s.upcase
  else
    output <<word[i].to_s
  end
    i += 1
end
puts output.to_s
end
