class Course < ActiveRecord::Base
	belongs_to :category 
	belongs_to :user

	validates_presence_of :name, message: "You should give a name"
	validates_presence_of :category_id
	
	#validates_length_of :name, within: 2..10


end

=begin 
	1. reference to libraries 
	2. has many association
	3. has many through association
	4. belongs_to association
	5. validations
	6. call backs
	7. custom validations
	8. custom instance methods
	9. custom class methods
	10. all our private methods 
=end
