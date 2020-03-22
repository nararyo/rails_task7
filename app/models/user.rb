class User < ApplicationRecord
	
	attr_accessor :name, :age

	def initialize(name:,age:)
		self.name = name
		self.age = age
	end

	def disp_name
		if @age <= 10 && age > -1
			"#{@name}ちゃん"
		elsif @age >= 10 && age <= 19
			"#{@name}くん"
		elsif @age > 19 
			"#{@name}さん"
		else
			"不正な値です"
		end
	end
end
