class Sala < ApplicationRecord
    belongs_to :user
    validates :title, presence :true
    validades :initial_date, presence :true
    validates :final_date, presence :true
end
