# Converts F, returns C
def ftoc(f)
	(f - 32) * (5.0 / 9.0)
end


# Converts C, returns F
def ctof(c)
	c * (9.0 / 5.0) + 32
end