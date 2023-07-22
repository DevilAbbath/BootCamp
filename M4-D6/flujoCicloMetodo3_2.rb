def adivinaNumero(n)
  secretNumber = rand(1..n)
  intentos = 0

  loop do
    print "Ingresa un número entre 1 y #{n}: "
    userNumber = gets.chomp.to_i

    intentos += 1

    if userNumber == secretNumber
      puts "¡Felicitaciones! Has adivinado el número en #{intentos} intentos."
      break
    elsif userNumber < secretNumber
      puts "El número es más grande. Sigue intentando."
    else
      puts "El número es más pequeño. Sigue intentando."
    end
  end
end

# Pide al usuario el valor máximo para el rango
puts "¡Bienvenido a Adivina el número!"
print "Ingresa el valor máximo del rango: "
valor_maximo = gets.chomp.to_i

adivina_el_numero(valor_maximo)
