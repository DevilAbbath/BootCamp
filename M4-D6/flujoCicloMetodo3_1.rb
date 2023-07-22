def calcular_nuevo_salario(salario_actual, porcentaje_aumento)
    if porcentaje_aumento < 0
      puts "El porcentaje de aumento debe ser positivo."
      return salario_actual
    end
  
    nuevo_salario = salario_actual * (1 + porcentaje_aumento / 100.0)
    nuevo_salario.round(2)  # Redondeamos a 2 decimales para que el salario sea más legible
end
  
# Datos de prueba
salario_actual = 3000
porcentaje_aumento = 10

nuevo_salario = calcular_nuevo_salario(salario_actual, porcentaje_aumento)

puts "Salario actual: $#{salario_actual}"
puts "Porcentaje de aumento: #{porcentaje_aumento}%"
puts "Nuevo salario: $#{nuevo_salario}"