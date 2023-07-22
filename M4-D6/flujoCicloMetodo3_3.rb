def calcular_imc(peso, altura)
  imc = peso / (altura ** 2)

  if imc < 16
    resultado = "Delgadez severa"
  elsif imc >= 16 && imc < 17
    resultado = "Delgadez moderada"
  elsif imc >= 17 && imc < 18.5
    resultado = "Delgadez leve"
  elsif imc >= 18.5 && imc < 25
    resultado = "Normal"
  elsif imc >= 25 && imc < 30
    resultado = "Sobrepeso"
  elsif imc >= 30 && imc < 35
    resultado = "Obesidad grado I (Moderado)"
  elsif imc >= 35 && imc < 40
    resultado = "Obesidad grado II (Severo)"
  else
    resultado = "Obesidad grado III (Muy severo)"
  end

  return resultado
end

puts "Calculadora de IMC"
print "Ingresa tu peso en kilogramos: "
peso_usuario = gets.chomp.to_f
print "Ingresa tu altura en metros: "
altura_usuario = gets.chomp.to_f

resultado_imc = calcular_imc(peso_usuario, altura_usuario)
puts "Tu IMC es: #{resultado_imc}"
