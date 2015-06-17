def ftoc(x)
	x = (x - 32) * 5.0 / 9.0
end

def ctof(x)
	x = (x * 9.0 / 5.0) + 32
end
p ctof(100)