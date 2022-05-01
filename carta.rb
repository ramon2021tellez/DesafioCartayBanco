#ejercicio 1
#crear clase Carta
class Carta
    #agregar gretters y setters del atributo numero y pinta
    attr_accessor :numero
    attr_accessor :pinta
    #crear constructor initialize
    def initialize(numero, pinta)
        #establecer condicion para variable nunero y pinta
        # opcion 2
        if (numero>=1 || numero <= 13) && ["C", "D", "T", "E"].include?(pinta)
        #opcion 1
       # if (numero.digits.count(1..13)) && ["C", "D", "T", "E"].include?(pinta)
            @numero = numero
            @pinta = pinta
        
        end
    end
    #metodo to_s origen de puts 
    def to_s
       " Numero de carta #{numero} , con la Pinta #{pinta} "
    end
end
#inicializar array vacio
arraymostrar = []
#probar la clase creando un arreglo con 5 cartas
n=5
n.times {  |i| 
    #traspaso a arreglo cartas randon y tipo de cartas
    arraymostrar << Carta.new(rand(1..13), ["C", "D", "T", "E"].sample)

}

puts '           Mostrar registro         '
puts '------------------------------------'
#mostrar arreglo arraymostrar  
puts arraymostrar