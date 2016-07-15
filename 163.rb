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

require 'pry'
def one
  puts "--*--"
  puts "-**--"
  puts "--*--"
  puts "--*--"
  puts "-***-"
  puts "-----"
end

def two
  puts "***--"
  puts "---*-"
  puts "-**--"
  puts "*----"
  puts "****-"
  puts "-----"
end

def three
  puts "***--"
  puts "---*-"
  puts "-**--"
  puts "---*-"
  puts "***--"
  puts "-----"
end

def four
  puts "-*---"
  puts "*--*-"
  puts "****-"
  puts "---*-"
  puts "---*-"
  puts "-----"
end

def five
  puts "****-"
  puts "*----"
  puts "***--"
  puts "---*-"
  puts "***--"
  puts "-----"
end

def six
  puts "-**--"
  puts "*----"
  puts "***--"
  puts "*--*-"
  puts "-**--"
  puts "-----"
end

def seven
  puts "****-"
  puts "---*-"
  puts "--*--"
  puts "-*---"
  puts "-*---"
  puts "-----"
end

def eight
  puts "-**--"
  puts "*--*-"
  puts "-**--"
  puts "*--*-"
  puts "-**--"
  puts "-----"
end

def nine
  puts "-**-- "
  puts "*--*-"
  puts "-***-"
  puts "---*-"
  puts "-**--"
  puts "-----"
end

def zero
  puts "-**--"
  puts "*--*-"
  puts "*--*-"
  puts "*--*-"
  puts "-***-"
  puts "-----"
end

input_line do |line|
  array = line.scan(/./)
  array.each do |x|
    x = x.to_i
    if x.is_a?(Integer)
      case x
      when 0 then zero
      when 1 then one
      when 2 then two
      when 3 then three
      when 4 then four
      when 5 then five
      when 6 then six
      when 7 then seven
      when 8 then eight
      when 9 then nine
      end
    end
  end
end
