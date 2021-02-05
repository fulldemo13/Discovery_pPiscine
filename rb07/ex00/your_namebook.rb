#!/usr/bin/ruby

def array_nombres hash
	res = []
	hash.each {|fname, lname| res.push(fname.capitalize + " " + lname.capitalize)}
	res
end

personas = {
	"jean" => "valjean",
	"grace" => "hopper",
	"xavier" => "niel",
	"fifi" => "brindacier"
}

p array_nombres(personas)