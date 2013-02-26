class Password

  attr_accessor :pwd

  def initialize(attributes = {})
    @pwd  = attributes[:pwd]
  end

	def generate_pwd
	  @pwd = ""
	  @pwd += ('a'..'z').to_a.shuffle[0..7].join(',') 
	  @pwd += ('A'..'Z').to_a.shuffle[0..7].join(',') 
	  @pwd += ('2'..'9').to_a.shuffle[0..7].join(',') 
	  pwd_a = @pwd.split(",")
	  pwd_a.shuffle!
	  @pwd = pwd_a.join
	  @pwd = @pwd.slice(0..9)

	# need to add checking for the first character being a number, if it is, then generate another
	return @pwd
	end
end