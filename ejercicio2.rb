class MiClase
 attr_reader :name
 def initialize(name)
 @name = name
 end
 def self.saludar
 "Hola! Soy la clase #{name}"
 end
end

c = MiClase.new('Clase Uno')
puts c.name
puts MiClase.saludar