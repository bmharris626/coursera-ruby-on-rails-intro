# log string to stdout
puts 3

# standard if block
name = "Brandon"

if name == "Brandon"
  puts "Hello Brandon"
elsif name == "Dave"
  puts "Hello Dave"
else
  puts "Hello person"
end

# logic if for not equal to
unless name == "Robert"
  puts "Hello person!"
end

# standard looping
a = 10

while a > 0
  puts a
  a -= 1
end

# until is a not equal to loop
a = 0

until a >= 10
  puts a
  a += 1
end

# one line conditional statement
a = 5
b = 0

puts "One liner" if a == 0 and b == 0

# one line statements are valid
times_2 = 2
times_2 *= 2 while times_2 < 100
puts times_2

# Nil and false are the only false values
puts "Nil is false" if ""
puts "false is false" if 0

# === checks if right is subset of left
puts "=== checks class" if Integer === 21
puts "=== checks regExp" if /sera/ === "coursera"

# === is not reverse compatible
puts "=== checks class" if 21 === Integer
puts "=== checks regExp" if "coursera" === /sera/

# case statements
age = 21

case
  when age >= 21
    puts "You can buy a drink!"
  when 1 == 0
    puts "Written by drunk programmer"
  else
    puts "Default"
end

# alternate case statement utilizing ===
name = 'Fisher'

case name
  when /fish/i then puts "Something is fishy here"
  when 'Smith' then puts "Your name is Smith"
end

# for loops not used, use each/times preferred
for i in 0..2
  puts i
end

# times method does something multiple times
10.times {puts "Hello World!"}

# cand also be done on a multi-line basis
5.times do |index|
  if index > 0
    puts index
  end
end

# simple function
def simple
  puts "no parens"
end

# return statements are optional
def add(one, two)
  one + two
end

# variable number of arguments can be sent to a function
def max_number(title, *numbers, name)
  numbers.max
end

# Use of implicit block
def two_times_implicit
  return "No Block" unless block_given?
  yield
  yield
end

# Use of explicit block
def two_times_explicit (&i_am_a_block)
  return "No Block" if i_am_a_block.nil?
  i_am_a_block.call
  i_am_a_block.call
end

# Reading from a file
File.foreach("test.txt") do |line|
  puts line
  p line
  p line.chomp #chops off newline character
  p line.split #array of words in line
end

#Handling exception
begin
  File.foreach("does_not_exist.txt") do |line|
    puts line.chomp
  end
rescue Exception => e
  puts e.message
  puts "Let's pretend this didn't happen..."
end

# Writing to a file
File.open("test_out.txt", "w") do |file|
  file.puts "One Line"
  file.puts "Another"
end
