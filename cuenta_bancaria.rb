class CuentaBancaria
    attr_accessor :nombre_usuario
    attr_reader :vip, :numero_de_cuenta
    def initialize(nombre_usuario, numero_de_cuenta, vip = 0)
        if numero_de_cuenta.digits.count != 8
            raise RangeError, "Número de dígitos incorrecto"
        elsif !(0..1).include? vip
            raise RangeError, "Número VIP incorrecto"
        end
        @nombre_usuario = nombre_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end
    def cuenta_vip
        "#{vip}-#{numero_de_cuenta}"
    end
    def to_s
        "Nombre de usuario ..#{nombre_usuario} Numero..#{cuenta_vip}"
    end
end
#ejemplo cuenta Normal 
mostrarcuenta = CuentaBancaria.new("Carlos", 87654321, 0)
#puts mostrarcuenta.nombre_usuario
#puts mostrarcuenta.cuenta_vip
puts 'cliente cuenta Normal '
puts mostrarcuenta
#ejemplo cuenta Vip
mostrarcuenta = CuentaBancaria.new("Jose", 86044321, 1)
puts 'cliente cuenta Vip'
puts mostrarcuenta