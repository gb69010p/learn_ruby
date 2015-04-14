def add(x, y)
	x + y
end


def subtract(x, y)
	x - y
end


def sum(vars)
	total = 0
	vars.each {|x| total += x }
	total
end


def multiply(*x)
	product = 1
	x.each {|i| product *= i}
	product
end

def power(x, e)
	product = 1
	e.times {product *= x}
	product
end

def factorial(x)
	if x == 0
		return 0
	end

	if x < 0
		return nil
	end

	num = x
	product = 1

	while num > 1
		product *= num
		num -= 1
	end


	product
end
