#Ejercicio 2
#Crear clase CuentaBancaria
class CuentaBancaria
    #getter y setter para el atributo nombre_usuario
    attr_accessor :nombre_usuario
    #solo lectura para atributo vip y numero de cuenta
    attr_reader :vip, :numero_de_cuenta
    #metodo constructor
    def initialize(nombre_usuario, numero_de_cuenta, vip = 0)
        if numero_cuenta.digits.count != 8
            raise RangeError, "Número de dígitos incorrecto"
        end

        if !(0..1).include? (vip)
            raise RangeError, "Número VIP incorrecto"
        end
        @nombre_usuario = nombre_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end
    def cuenta_vip
        "#{self.vip}-#{self.numero_de_cuenta}"
    end
end
#se instancia la variable resultado
resultado = CuentaBancaria.new("marcos", 87654321, 1)
#se muestra resultado nombre usuario y cuenta vip 
puts resultado.nombre_usuario
puts resultado.cuenta_vip