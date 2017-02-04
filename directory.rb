$stdout.sync=true
def input_students
 puts  "Please enter the name of the student". center(40)
 name = gets.gsub("\n","")
 puts  "Please enter the cohort". center(40)
 cohort = gets.gsub("\n","")
 # creates an empty array
 students = []
 while !name.empty? || !cohort.empty? do
   name="unknown" if name.empty?
   cohort = "unknown" if cohort.empty?
   puts "you entered #{name} and #{cohort}".center(40)
   puts "Is this infomation correct if please type yes/no".center(40)
   puts "To finish, just hit return twice".center(40)
   answer =gets.gsub("\n","")
   if answer == "yes" && students.count == 0
     students << {name: name.to_sym, cohort: cohort.to_sym}
     puts "Now we have #{students.count} student".center(40)
   elsif answer == "yes" && students.count > 0
     new_count = students.count + 1
     students << {name: name.to_sym, cohort: cohort.to_sym}
     puts "Now we have #{new_count} students".center(40)
   else
     puts "please re-enter the information".center(40)
   end
  puts "please enter the name of the student".center(40)
  name =gets.gsub("\n","")
  puts "please enter the name of the cohort".center(40)
  cohort = gets.gsub("\n","")
end
# return students
 students
end
 def print_header

puts "The students of Villains Academy".center(40)
  puts "-------------".center(40)
 end
def print(students)

  return if students.empty? == true
  puts "please enter the cohort you would like to search for".center(40)

  answer =gets.gsub("\n","")

  students.map do |student| if "#{student[:cohort]}" == answer

    until "#{student[:name]}".length == 0

     puts  "#{student[:name]} (#{student[:cohort]} cohort)".center(40)
    break
    end
   end
  end
end
def print_footer(names)
  if names.count == 1
      puts "Overall, we have #{names.count} great student".center(40)
  else names.count > 1
      puts "Overall, we have #{names.count} great students ".center(40)
  end
 end

def interactive_menu
  students = []
  loop do
    #1. print the menu and ask the user whta to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    #2. read the input and save it inot a variable
    selection = gets.chomp
    #3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
    end
  end
end
interactive_menu
