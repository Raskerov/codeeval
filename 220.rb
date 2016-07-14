=begin
def input_line(&block)
  input_file.each_line do |line|
    puts block.call(line.chomp)
  end
end

def input_file
  File.open(file_path, 'r')
end

def file_path
  ARGV[0]
end
=end

scores = Hash.new
scores = {
  Vampires: 1,
  Zombies: 1,
  Witches: 1,
  Houses: 1
}

treats = 0

scores.each do |k, v|
  treats = treats + v.to_i
end

puts treats
