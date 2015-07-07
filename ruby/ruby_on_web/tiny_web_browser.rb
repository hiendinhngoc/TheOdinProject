require 'socket'
require 'json'

hostname = 'localhost'
port = 2000

print "Which type of request would you like to send? (GET or POST): "
input = gets.chomp.upcase

if input == "GET"
  request = "GET /index.html HTTP/1.0\r\n\r\n"

elsif input == "POST"
  print "\rPlease enter a name: "
  name = gets.chomp
  print "\rPlease enter an email address: "
  email = gets.chomp

  hash = {:user => {:name => name, :email => email} }
  json_hash = hash.to_json
  request = "POST /thanks.html HTTP/1.0\r\nContent-Length: #{json_hash.size}" \
            "\r\n\r\n#{json_hash}"
end

socket = TCPSocket.open(hostname, port)
socket.print(request)
response = socket.read
headers, body = response.split("\r\n\r\n", 2)
print body
socket.close

# other solution
=begin
require 'net/http'                  # The library we need
host = 'www.tutorialspoint.com'     # The web server
path = '/index.htm'                 # The file we want 

http = Net::HTTP.new(host)          # Create a connection
headers, body = http.get(path)      # Request the file
if headers.code == "200"            # Check the status code   
  print body                        
else                                
  puts "#{headers.code} #{headers.message}" 
end
=end
