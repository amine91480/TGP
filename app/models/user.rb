class User < ApplicationRecord
	has_secure_password
	#NAMES & AGE
	# validates :first_name, presence: true
	# validates :last_name, presence: true
	#
	# #EMAIL
	# validates :email, presence: true,
	# 	uniqueness: true
	#
	# #AGE
	# validates :age, presence: true
	#
	#LINK GOSSIP
	has_many :gossips
	#
	#LINK CITY
	belongs_to :city

	# GEM QUI PERMET DE CRYPTER LE MOT DE PASSE

end
