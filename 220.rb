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
  collected_treats = 0
  kids = 0
  scores = Hash.new
  array = line.split(",")
  array.each do |e|
    key = e.split(":")
    scores[key[0]] = key[1]
  end

      scores.each do |key, value|
       if key == "Vampires"
         collected_treats += value.to_i * 3
         kids += value.to_i
       elsif key == " Zombies"
         collected_treats += value.to_i * 4
         kids += value.to_i
       elsif key == " Witches"
         collected_treats += value.to_i * 5
         kids += value.to_i
       end
      end
      collected_treats = collected_treats * scores[" Houses"].to_i
      treats_per_kid = collected_treats / kids
      treats_per_kid.floor
      puts treats_per_kid
end
