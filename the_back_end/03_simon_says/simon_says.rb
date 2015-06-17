def echo(hello)
	"#{hello}"
end

def shout(hello)
	"#{hello}".upcase
end

def repeat(hello, n=2)
	("#{hello} " * n).rstrip#remove the last space(trailing white space)
end

def start_of_word(string, n)
	"#{string}"[0..n-1]
end

def first_word(string)
	"#{string}".split(" ").first
end

def titleize(string)
	lowercase_word = %w{a an the and but or for nor of over}
	"#{string}".split.each_with_index.map{|x, index| lowercase_word.include?(x) && index > 0 ? x : x.capitalize}.join(" ")
end