puts "Enter number of students : "
total_students = gets.to_i

student_marks = {}
student_attendance = {}
defaulter_students = []

for i in 1..total_students do
	puts "Enter name of student of #{i} : "
	name = gets.chomp
	puts "Enter marks of student of #{i} : "
	marks = gets.to_i
	puts "Enter attendance of student of #{i} : "
	attendance = gets.to_i

	student_marks = student_marks.merge(name => marks)

	student_attendance = student_attendance.merge(name => attendance)

	

end

topper = student_marks.key(student_marks.values.max )

puts "Topper of the class is #{topper} "


student_attendance.each do |key,value|
	
	
	stud_attendance = value
	
	if stud_attendance < 40 
		name = key
		defaulter_students = defaulter_students.append(name)
	end

end

puts "Defaulter students : #{defaulter_students} "

sum = 0

student_marks.each do |kay,value|
	
	val = value
	sum = sum + val

	
end

avg = sum/total_students

puts "Average marks of students are : #{avg} "











