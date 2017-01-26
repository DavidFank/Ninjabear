class Fighter

	attr_reader :name
	attr_accessor :health, :power

	def initialize(name, health, power)
		@name = name
		@health = health 
		@power = power
	end

	def attack(enemy)
		enemy.lose_health(self.power)
		#=> self is referring to the object where we call the mehtod. in this we push in the attacks power(self.power)
	end

	def lose_health(power_attacker)
		self.health -= power_attacker
		#=> self.health = self.health - power_attacker => this will show the left over health
		#=> self is referring to the object where we call the method on.. in thi scase the attacked objects health.
	end
end

rocky = Fighter.new("Rocky", 110, 15)
arnie = Fighter.new("Arnold Schwarzenegger", 110, 25)

# puts rocky.attack(arnie)
# puts arnie.inspect

# puts arnie.attack(rocky)
# puts rocky.inspect

# puts rocky.attack(arnie)
# puts arnie.inspect