# working with times
15.times do |index|
  puts 'Mensagem ' + index.to_s
end

# working with while
init = 0

while init <= 10 do
  puts 'Repetindo a mensagem no indice ' + init.to_s

  init += 1
end

# working with for 
for item in (0...10)
  puts 'Mensagem ' + item.to_s
end

# working with each in arrays
avengers = ['ironman', 'hulk', 'spiderman']

avengers.each do |avenger|
  puts avenger
end
