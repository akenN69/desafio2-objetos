#Ejercicio 4: Constructor con argumentos
propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
class Dog
  def initialize(propiedades)
    @nombre = propiedades[:nombre]
    @raza = propiedades[:raza]
    @color = propiedades[:color]
  end

  def ladrar
    puts "#{@nombre} está ladrando"
  end
end

dog1 = Dog.new(propiedades)
dog1.ladrar