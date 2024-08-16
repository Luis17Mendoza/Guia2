class Calcular
  def initialize(numero)
    @numero = numero
  end

  def suma_pares
    suma = 0
    (1..@numero).each do |i|
      if i.even?
        suma += i**2
      end
    end
    suma
  end

  def suma_impares
    suma = 0
    (1..@numero).each do |i|
      if i.odd?
        suma += i**2
      end
    end
    suma
  end
end

print "Ingrese un número: "
numero = gets.chomp.to_i

calcular = Calcular.new(numero)

puts "La suma de los números pares es: #{calcular.suma_pares}"
puts "La suma de los números impares es: #{calcular.suma_impares}"