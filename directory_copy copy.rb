#first we put the list of students into an array

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice."

    #create an empty array
    students = []
    #get first name
    name = gets.chomp
    #while name is not empty, repeat this code
    while !name.empty? do
    #add student hash to the array
        students << { name: name, cohort: :november }
        puts "Now we have #{students.count} students"
        #get another name from user
        name = gets.chomp
    end
    #return array of students
    students
end 

#and print them

def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end

def print(students)
    response = Hash.new
    students.each.with_index do |(student, cohort), index|
      response = "#{index}: #{student[:name]} (#{student[:cohort]} cohort)" 
      puts response
    end
end
def print_footer(names)
    puts "Overall, we have #{names.count} great students"
end


students = input_students
print_header
print(students.each_with_index())
print_footer(students)