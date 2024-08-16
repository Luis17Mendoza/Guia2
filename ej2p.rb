# Crear un hash con los nombres y números de celular
contactos = {
  "Maria" => "2248-6559",
  "Pedro" => "9845-6532",
  "Juan" => "8265-4536",
  "Alberto" => "7896-4514"
}

# Mostrar el hash completo
puts "Contactos:"
contactos.each do |nombre, celular|
  puts "#{nombre}: #{celular}"
end

# Solicitar el nombre al usuario
print "Ingrese un nombre: "
nombre_ingresado = gets.chomp

# Normalizar el nombre ingresado a minúsculas
nombre_normalizado = nombre_ingresado.downcase

# Buscar el nombre en el hash, ignorando mayúsculas y minúsculas
contacto_encontrado = contactos.find { |nombre, _| nombre.downcase == nombre_normalizado }

if contacto_encontrado
  nombre, celular = contacto_encontrado
  puts "El número de celular de #{nombre} es #{celular}"
else
  puts "El nombre no existe en la lista de contactos."
end