class House < ActiveRecord::Base
has_many :persons ,:dependent => :destroy

validates :houseno,:address1,:address2,:address3,:address4,:owner ,:presence => true 

#validates :pin , :numericality =>{ :only_integer => true }
end
