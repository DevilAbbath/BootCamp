CHOICES = { 'Piedra' => 'Piedra', 'Papel' => 'Papel', 'Tijeras' => 'Tijeras' }

def getPlayerChoice
  choice = ''
  loop do
    puts 'Elige una opción: Piedra, Papel, Tijeras'
    choice = gets.strip
    break if CHOICES.keys.include?(choice)

    puts 'Opción inválida. Inténtalo de nuevo.'
  end
  choice
end

def getComputerChoice
  CHOICES.keys.sample
end

def displayChoices(playerChoice, computerChoice)
  puts "Elegiste #{CHOICES[playerChoice]}."
  puts "La computadora eligió #{CHOICES[computerChoice]}."
end

def displayResult(playerChoice, computerChoice)
  if playerChoice == computerChoice
    puts 'Es un empate.'
  elsif (playerChoice == 'Piedra' && computerChoice == 'Tijeras') ||
        (playerChoice == 'Papel' && computerChoice == 'Piedra') ||
        (playerChoice == 'Tijeras' && computerChoice == 'Papel')
    puts '¡Ganaste!'
  else
    puts 'La computadora gana.'
  end
end

loop do
  playerChoice = getPlayerChoice
  computerChoice = getComputerChoice

  displayChoices(playerChoice, computerChoice)
  displayResult(playerChoice, computerChoice)

  puts '¿Quieres jugar de nuevo? (s/n)'
  break if gets.strip != 's'
end

puts 'Gracias por jugar. ¡Hasta luego!'
