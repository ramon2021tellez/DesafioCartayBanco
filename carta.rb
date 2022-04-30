#ejercicio 1
#crear clase Carta
class Carta
    #agregar gretters y setters del atributo numero y pinta
    attr_accessor :numero
    attr_accessor :pinta
    #crear constructor initialize
    def initialize(numero, pinta)
        #establecer condicion para variable nunero y pinta
        if (numero.digits.count(1..13)) && ["C", "D", "T", "E"].include?(pinta)
            @numero = numero
            @pinta = pinta
    
        end
    end
    #metodo to_s origen de puts y print
    def to_s
       " Numero de carta #{numero} | con la Pinta #{pinta} "
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
#puts  " Numero de carta #{numero} | con la Pinta #{pinta} "
puts '    Mostrar registro   '
puts '_______________________'
#mostrar arreglo arraymostrar  
puts arraymostrar