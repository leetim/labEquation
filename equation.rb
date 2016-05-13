require "mathn.rb"

def f(x)
	(2*Math::sqrt(x) - Math::cos(Math::PI*x/2))
end

def df(x)
	(1/Math::sqrt(x) + Math::PI/2*Math::sin(Math::PI*x/2))
end

def d2f(x)
	(1/2/Math::sqrt(x**3) + (Math::PI**2)/4*Math::cos(Math::PI*x/2))
end

def hord(x)
	x - (f(x))/(df(x))
end

x1 = 1
x2 = 0.05
while (x1 - x2).abs >= 0.0000001
	x2 = x1
	x1 = hord(x1)
end
puts "f(x) = #{f(x1)}"
puts "x = #{x1}"

# puts f(0)
# puts f(1)
# puts f(2)
# puts f(3)
# puts f(4)
# puts f(5)
# puts f(6)
# puts f(7)
# У данной функции один корень на промежутке [0.05, 1] т.к. графики функций 2\sqrt{x} и \cos{\pi x/2} пересекаются в однйо точке

