def input_students
  puts  "Please enter the names of the students". center(40)
  puts "To finish, just hit return twice".center(40)
 # creates an empty array
 students = []
 #gets the first name
name = gets.chomp
 # while the name is not empty, repeats this code
 while !name.empty?  do
  # add the student hash to the array
 students << {name: name, cohort: :november}
  puts "Now we have #{students.count} students".center(40)
  # get another name from the user
 name = gets.chomp
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
  until  "#{student[:name]}".length == 0

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
