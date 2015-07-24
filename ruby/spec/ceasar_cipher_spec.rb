require 'spec_helper.rb'
require 'ceasar_cipher.rb'

describe "#ceasar_cipher_encrypt" do
	it {ceasar_cipher_encrypt("hello world", 1).should == "ifmmp!xpsme"}
	it {ceasar_cipher_encrypt("hello world", 13).should == "uryyb-jbeyq"}
end

describe "#ceasar_cipher_decrypt" do
	it {ceasar_cipher_decrypt('y',"uryyb-jbeyq",13).should == "hello:world"}
end