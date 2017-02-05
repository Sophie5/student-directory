$stdout.sync=true
@students=[]
require 'csv'

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end
def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Save the list to students.csv"
    puts "4. Load the list from students.csv"
    puts "9. Exit"
end
def input_students
 puts "Please enter the name of the student \n To finish, just hit return twice"
 name = STDIN.gets.chomp
 while !name.empty?
     @students << {name: name.to_sym, cohort: :november}
     puts "Now we have #{@students.count} students"
     name =STDIN.gets.chomp
  end
  puts "input entered succesfully"
 end
def show_students
puts "all the data on students "
      print_header
      print_students
      print_footer
end
def process (selection)
case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "9"
       exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
def print_header
   puts "The students of Villains Academy\n -------------"
  end
 def print_students
 @students.each do |student|
       puts  "#{student[:name]} (#{student[:cohort]} cohort)"
   end
 end
def print_footer
       puts "Overall, we have #{@students.count} great students "
end
def save_students
  puts "What file would you like to save in?"
  savefile = gets.chomp
  CSV.open(savefile, "w") do |file|
  @students.each do |student|
    file << [student[:name], student[:cohort]]
 end
end
puts "save succesfull"
end
def load_students(filename = "students.csv")
  puts "what file would you like to load?"
  filename = gets.chomp
  CSV.foreach(filename) do |line|
  @students << {name: line[0], cohort: line[1]}
end
puts "sucessfully loaded file"
end

def try_load_students
filename = ARGV.first
    filename = "students.csv" if filename.nil?
   if File.exists?(filename) # if it exits
      CSV.foreach(filename) do |line|
     @students << { name: line[0],cohort: line[1]}
    end
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist"
    exit
  end
end
try_load_students
interactive_menu
