$stdout.sync=true
def input_students
  puts  "Please enter the names of the students"
  puts "To finish, just hit return six times "
 # creates an empty array
 students = []
 #gets the first name
name = gets.chomp
puts " Please enter age"
age =gets.chomp
puts "Please enter country of birth"
country = gets.chomp
puts "Please enter hobby"
hobby = gets.chomp
puts " Please enter favourite colour"
colour =  gets.chomp
puts "please put favourtie animal"
animal = gets.chomp
 # while the name is not empty, repeats this code
 while !name.empty?  do
  # add the student hash to the array
 students << {name: name, cohort: :november, age: age, country: country, hobby: hobby, colour: colour, animal: animal}
  puts "Now we have #{students.count} students"
  # get another name from the user
 name = gets.chomp
 age =gets.chomp
 country = gets.chomp
 hobby = gets.chomp
 colour = gets.chomp
 animal = gets.chomp
end
# return students
 students
end

def print_header

  puts "The students of Villains Academy"

  puts "-------------"

end



def print(students)
students.map do |student|
  until  "#{student[:name]}".length == 0

  puts  "#{student[:name]} (#{student[:cohort]} cohort), age:#{student[:age]}, colour: #{student[:country]}, hobby: #{student[:hobby]}, favourite animal: #{student[:animal]} "
break
end
end
end
def print_footer(names)

  puts "Overall, we have #{names.count} great students "

end
students = input_students
# nothing happens until we call these methods
print_header
print(students)
print_footer(students)
