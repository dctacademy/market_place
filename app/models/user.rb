class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :courses
  has_one :profile

  # has_many :join_table
  # has_many :associated_table, through: :join_table

  has_many :permissions
  has_many :roles, through: :permissions

  after_create :create_permission


  def role?(role)
  	self.roles.pluck(:name).include? role 
  end

  private 

  def create_permission
  	#binding.pry
  	if !self.role.nil?
  	#	binding.pry
	  	role = Role.find_by_name(self.role)
	  	Permission.create(user_id: self.id, role_id: role.id )
	  #	binding.pry
	  end
  end
end
