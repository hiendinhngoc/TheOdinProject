class C
  def inst_var_init(value)
    @ivar = value
  end
   def inst_var_report
     puts "Inspecting the value of the instance variable....."
     puts @ivar
   end
end

c = C.new
c.inst_var_init("Just some string")
c.inst_var_report