
#lests put all students into an array
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffry Baratheon",
"Norman Bates"
]
# and then print them
puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
  puts student
end
# finally, we print the total number of students
puts "Overall, we have #{students.count} great students "