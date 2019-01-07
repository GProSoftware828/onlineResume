class GuestUser < User
	#:id is for action cable devise request:
	attr_accessor :name, :first_name, :last_name, :email, :id
end