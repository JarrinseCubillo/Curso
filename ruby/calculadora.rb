puts '¿Que operacion desea realizar Sumar (1) o Restar(2)?'
STDOUT.flush
@operacion = gets.chomp

puts 'Ingrese numero(1)'
STDOUT.flush
num1 = gets.chomp

puts 'Ingrese numero(2)'
STDOUT.flush
num2 = gets.chomp


resultado = case @operacion
when '1'
    puts "El resultado de la suma es : #{num1.to_i + num2.to_i}"
when '2'
    puts "El resultado de la resta es : #{num1.to_i - num2.to_i}"
end 

