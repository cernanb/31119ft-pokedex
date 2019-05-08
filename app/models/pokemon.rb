class Pokemon < ActiveRecord::Base
    validates :name, :power, presence: true
    validates :name, length: { minimum: 4 }
end