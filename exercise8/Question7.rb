  $stdout.sync=true
def input_students
  puts  "Please enter the name of the students". center(40)


 # creates an empty array
 students = []
 #gets the first name
name = gets.chomp
puts  "Please enter the cohort". center(40)
cohort = gets.chomp
puts "To finish, just hit return twice".center(40)
 # while the name is not empty, repeats this code

while !name.empty? || !cohort.empty? do
name="unknown" if name.empty?
cohort = "unknown" if cohort.empty?
puts "you entered #{name} and #{cohort}"
  puts "Is this infomation correct if please type yes/no".center(40)
  answer =gets.chomp
  if answer == "yes"
 students << {name: name.to_sym, cohort: cohort.to_sym}
 puts "Now we have #{students.count} students".center(40)
 else
   puts "please re-enter the information"
 end
 name =gets.chomp
 cohort = gets.chomp
end
# return students
 students
end

def print_header

  puts "The students of Villains Academy".center(40)

  puts "-------------".center(40)

end

def print(students)
students.map do |student|
  until "#{student[:name]}".length == 0
    puts  "#{student[:name]} (#{student[:cohort]} cohort)".center(40)
    break
end
end
end


def print_footer(names)

  puts "Overall, we have #{names.count} great students ".center(40)

end
students = input_students
# nothing happens until we call these methods
print_header
print(students)
print_footer(students)
