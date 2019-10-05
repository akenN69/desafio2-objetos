#Ejercicio 7: Mascota Virtual
class MyPet
    def initialize name
        @name = name
        @sleep = false
        @satisfied = 10 # Esta lleno
        @fullIntestine = 0 # No necesita ir
        puts @name + ' nace '
        puts "
              despierto?: #{@sleep = "Despierto" if sleep == false}, 
              Hambre: #{ @satisfied} 
              Ganas de ir al baño: #{@fullIntestine} "
    end



    def walk
        puts 'Haces caminar a ' + @name + '.'
        @satisfied -= 2
        @fullIntestine = 2
        puts "
        despierto?: #{@sleep},
        Hambre: #{@satisfied},
        Ganas de ir al baño: #{@fullIntestine}"
        timeLapse
    end

    def eat 
        puts '!' + @name + ' se esta alimentando!'
        @satisfied += 2
        @fullIntestine += 2
        puts "
        despierto?: #{@sleep},
        Hambre: #{@satisfied},
        Ganas de ir al baño: #{@fullIntestine}"
        timeLapse
    end

    def sleep
        puts @name + ' esta durmiendo'
        @sleep = true
        puts "
        despierto?: #{@sleep},
        Hambre: #{@satisfied},
        Ganas de ir al baño: #{@fullIntestine}"
        timeLapse
    end

    def timeLapse
        if @satisfied > 0
            # Mueve el alimento del estomago al intestino.
            @satisfied = @satisfied - 1
            @fullIntestine = @fullIntestine + 1
        else # Nuestro mascota esta hambrienta!
            if @sleep
               @sleep = false
               puts '¡Se despierta de repente!'
            end
            puts '¡' + @name + ' esta hambriento! En su desesperacion, ¡Murio de Hambre!'
            exit # Sale del programa.
        end

        if @fullIntestine >= 10
            @fullIntestine = 0
            puts '¡Uy! ' + @name + ' tuvo un accidente...'
        end
        
        if @satisfied == 2
            if @sleep
             @sleep = false
             puts '¡Se despierta de repente!'
            end
            puts 'El estomago de ' + @name + 'retumba...'
        end

        if @fullInstestine == 8
            if @sleep
                @sleep = false
                puts 'Se despierta de repente!'
            end
            puts @name + ' hace la danza del baño...'
        end
    end
end

puts "Felicitaciones, tu nueva mascota virtual a nacido!
      Porfavor ingresa su nombre:"
        new_pet = gets.chomp
        @pet = MyPet.new(new_pet)
puts "Felicidades #{@name}  esta listo para comenzar"


option = 0
while option != 4
    puts '
    Que quieres hacer?:
    
    1) Alimentar a mi mascota
    
    2) Salir a caminar con mi mascota para que haga caquita
    
    3) Hacer dormir a tu mascota
    
    4) Salir del juego.'

option = gets.chomp.to_i

def line_break
    puts '--------------------------------------------------------------'
end

case option
when 1
    line_break
    @pet.eat
    line_break
when 2
    line_break
    @pet.walk
    line_break
when 3
    line_break
    @pet.sleep
    line_break
when 4
    line_break
    puts 'Hasta pronto, tu mascota a muerto'
    line_break
else
    line_break
    puts 'Opcion no valida, porfavor ingrese opcion del 1-4'
    line_break
end
end
