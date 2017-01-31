
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
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(names)
  names.each do |name|
  puts name
 end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students "
end
# nothing happens until we call these methods
print_header
print(students)
print_footer(students)
