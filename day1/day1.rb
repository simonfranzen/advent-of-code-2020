data = File.readlines('data.txt').collect{|a| a.to_i}

# result
data.each do |a|
  (data - [a]).each do |b|
    if a + b == 2020
      puts "Found #{a} and #{b} in sum #{a+b}. Multiply #{a*b}"
    end
  end
end

# part 2
data.each do |a|
  (data - [a]).each do |b|
    (data - [a] - [b]).each do |c|
      if a + b + c == 2020
        puts "Found #{a}, #{b} and #{c} in sum #{a+b+c}. Multiply #{a*b*c}"
      end
    end
  end
end