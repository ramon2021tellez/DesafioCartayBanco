class CuentaBancaria
    attr_accessor :nombre_usuario
    attr_reader :vip, :numero_de_cuenta
    def initialize(nombre_usuario, numero_de_cuenta, vip = 0)
        if numero_de_cuenta.digits.count != 8
            raise RangeError, "Número de dígitos incorrecto"
        elsif !(0..1).include? (vip)
            raise RangeError, "Número VIP incorrecto"
        end
        @nombre_usuario = nombre_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end
    def cuenta_vip
        "#{vip}-#{numero_de_cuenta}"
    end
end

results = CuentaBancaria.new("marcos", 87654321, 1)

puts results.nombre_usuario
puts results.cuenta_vip