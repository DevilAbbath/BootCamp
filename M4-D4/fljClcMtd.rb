separador = '*-------------------------------*'

def punto1 
  numero = 1

  while numero <= 20
    #Even hace referencia a los numeros divisibles entre 2, numero par
    puts numero if numero.even?
    numero += 1
  end
end

def punto2 
  numero = 1

  while numero <= 20
    #Odd hace referencia a los numeros que no divisibles entre 2, numero impar
    puts numero if numero.odd?
    numero += 1
  end
end

def punto3
  numero= 9
  puts "Tabla de multiplicar del #{numero}:"
  for multiplicador in 1..10
    resultado = numero * multiplicador
    puts "#{numero} x #{multiplicador} = #{resultado}"
  end
end

def punto4
  height = 6  # Altura del triángulo

  height.times do |row|
    puts "*" * (row + 1)
  end
end


puts separador
puts 'Punto 1 / Numeros Pares '
puts punto1
puts separador
puts 'Punto 2 / Numeros Imares '
puts punto2
puts separador
puts 'Punto 3 / Tabla del 9 '
puts punto3
puts separador
puts 'Punto 4 / Triangulo '
puts punto4
puts separador