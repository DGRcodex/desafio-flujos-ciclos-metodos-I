# juego.rb

def obtener_opcion_aleatoria
  opciones = {
    1 => "piedra",
    2 => "papel",
    3 => "tijera"
  }
  opcion_aleatoria = opciones[rand(1..3)]
end

def determinar_ganador(usuario, computadora)
  if usuario == computadora
    resultado = "¡Es un empate!"
  elsif (usuario == "piedra" && computadora == "tijera") ||
        (usuario == "tijera" && computadora == "papel") ||
        (usuario == "papel" && computadora == "piedra")
    resultado = "¡Ganaste!"
  else
    resultado = "¡Perdiste!"
  end

  resultado
end

# Obtener la opción del usuario
puts "Elige una opción: piedra, papel o tijera"
usuario = gets.chomp.downcase

# Validar la opción del usuario
unless ["piedra", "papel", "tijera"].include?(usuario)
  puts "Opción inválida. Debes elegir entre piedra, papel o tijera."
  exit
end

# Obtener la opción aleatoria de la computadora
computadora = obtener_opcion_aleatoria

# Mostrar las opciones elegidas
puts "Usuario: #{usuario}"
puts "Computadora: #{computadora}"

# Determinar el ganador
resultado = determinar_ganador(usuario, computadora)
puts resultado
