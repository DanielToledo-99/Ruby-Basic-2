students_count = 0
until students_count.positive?
  print "Number of students: "
  students_count = gets.chomp.to_i
end

puts "Insert the student information in the following way:"
puts "Student n: [name], [correct-answers], [incorrect-answers]"

students_data = []

count = 1
while count <= students_count
  print "Student #{count}: "
  response = gets.chomp
  data = response.split(",")
  name = data[0]
  correct_answer = data[1].to_i
  incorrect_answer = data[2].to_i

  if correct_answer + incorrect_answer > 100
    puts "Correct and incorrect answer should be less than or equal to 100"
    next
  end

  score = (correct_answer * 10) - (incorrect_answer * 2)

  score = 0 if score.negative?

  student_data = { name: name, score: score }
  students_data.push(student_data)

  count += 1
end

puts "--------------------------------------------------"
puts "Results:"

sorted_students = students_data.sort_by { |student| student[:score] }

sorted_students.reverse.each do |student|
  puts "#{student[:name]} scored #{student[:score]} points"
  bricks = student[:score] / 20
  puts ("#" * bricks) + (":" * (50 - bricks))
end