require 'spec_helper.rb'
require 'ceasar_cipher.rb'

describe "#ceasar_cipher_encrypt" do
	expect {ceasar_cipher_encrypt("hello world!", 1).to "ifmmp xpsme!"}
	it {ceasar_cipher_encrypt("hello world!", 13).must_equal "uryyb jbeyq!"}
end

describe "#ceasar_cipher_decrypt" do
	it {ceasar_cipher_decrypt("uryyb jbeyq!",13).must_equal "hello world!"}
end