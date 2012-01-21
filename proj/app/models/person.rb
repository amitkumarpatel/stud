class Person < ActiveRecord::Base
belongs_to :house
validates :name,:title,:phone ,:presence => true 
validates :phone , :numericality =>{ :only_integer => true }
end
