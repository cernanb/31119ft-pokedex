class Pokemon < ActiveRecord::Base
    validates :name, presence: true
end