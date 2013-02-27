def duplicate
  require './generate_password'
  pwd = Password.new
  @tmp_pwd = ""
  @pwd = pwd.generate_pwd
  @tmp_pwd = @pwd
  @pwd = pwd.generate_pwd
  @i = 0 
  while @tmp_pwd != @pwd do
    @i += 1
    
    @pwd = pwd.generate_pwd
    #puts "#{@pwd}" 
    #puts "#{@tmp_pwd}" 
    puts "#{@i}"
  end
  #return $i
  puts "#{@pwd}" 
  puts "#{@tmp_pwd}" 
  puts "#{@i}"
end

class String
  def shuffle
    self.split('').shuffle.join
  end
end
