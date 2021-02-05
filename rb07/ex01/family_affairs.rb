#!/usr/bin/ruby

def encontrar_pelirrojos hash
	res = []
	hash.select { |name, color| color == :pelirrojo ? res.push(name) :0 }
	res
end

familia_Rebollez = {
	"Rigoberto" => :pelirrojo,
	"Anastasia" => :rubio,
	"Eudovigis" => :moreno,
	"David" => :pelirrojo,
	"Francis" => :pelirrojo
}

p encontrar_pelirrojos(familia_Rebollez)