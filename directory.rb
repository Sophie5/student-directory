$stdout.sync=true

@students=[] #an empty array accessible to all methods

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
  file = File.open( savefile,"w")
  @students.each do |student|
     file.puts student_data = [student[:name], student[:cohort]].join(",")
 end
puts "save succesfull"
 file.close
end

def load_students(filename = "students.csv")
  puts "what file would you like to load?"
  filename = gets.chomp
  if !File.exists?(filename)
    puts "Sorry, #{filename} doesn't exist"
  end
  file = File.open(filename,"r")
  file.readlines.each do |line|
   name, cohort = line.chomp.split(',')
  @students << {name: name, cohort: cohort.to_sym}
end
puts "sucessfully loaded file"
  file.close
end

def try_load_students
filename = ARGV.first
    filename = "students.csv" if filename.nil?
   if File.exists?(filename) # if it exits
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist"
    exit # quit the program
  end
end

try_load_students
interactive_menu
