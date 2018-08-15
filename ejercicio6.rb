module Test
	def result
		# Ternario: ((nota1 + nota2) / 2.0 > 4) ? "Estudiante aprobado" : "Estudiante reprobado"
		if ((nota1 + nota2) / 2.0) > 4
			"Estudiante aprobado"
		else
			"Estudiante reprobado"
		end
	end
end

module Attendance
	def student_quantity
		@@quantity
	end
end

class Student
	include Test, Attendance
	@@quantity = 0 

	attr_reader :nombre, :nota1, :nota2
	def initialize(nombre, nota1 = 4, nota2 = 4)
		@nombre = nombre
		@nota1 = nota1
		@nota2 = nota2
		@@quantity += 1
	end
end

l = []
10.times do |i|
	l << Student.new("Juanito #{i}", rand(1..7), rand(1..7))
end

p l[9].nombre
p l[9].nota1
p l[9].nota2
p l[9].result

p Student.student_quantity