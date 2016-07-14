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
  letters_index = 0

  new_line = line.downcase!.split(//).each.with_object("") do |char, object|

    if (letters_index % 2 == 0) && char =~ /[a-z]/
      object << char.upcase
    else
      object << char
    end
    letters_index += 1 if char =~ /[a-z]/
  end

  puts new_line
end
