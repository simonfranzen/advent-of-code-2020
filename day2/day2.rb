data = File.readlines('data.txt').collect{|a|
  d = a.split(' ')
  {
    min: d[0].split('-')[0].to_i,
    max: d[0].split('-')[1].to_i,
    letter: d[1][0],
    password: d[2]
  }
}

valid_counter = 0
data.each do |d|
  occurences = d[:password].count(d[:letter])
  valid_counter += 1 if occurences >= d[:min] && occurences <= d[:max]
end
puts "#{valid_counter} valid passwords."


# part two
valid_counter = 0
data.each do |d|
  occurences = d[:password].count(d[:letter])
  if (d[:password][d[:min]-1] == d[:letter] && d[:password][d[:max]-1] != d[:letter]) ||
        (d[:password][d[:min]-1] != d[:letter] && d[:password][d[:max]-1] == d[:letter])
    valid_counter += 1
  end
end
puts "#{valid_counter} valid passwords."