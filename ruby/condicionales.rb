nombre = 'Marlon'
if nombre == 'Juan'
  puts 'Hola'  
elsif nombre == 'Marlon'
  puts 'Que Onda!'  
else
  puts 'Adios'  
end

puts 'Hola soy Marlon' if nombre == 'Marlon'
puts 'Hola' unless nombre == 'Marlon'

#case

resultado = case nombre
when 'Juan'
    'Hola desde Case'  
when 'Marlon'
    'Que Onda! desde Case'  
else
    'Adios desde Case'  
end 

puts resultado