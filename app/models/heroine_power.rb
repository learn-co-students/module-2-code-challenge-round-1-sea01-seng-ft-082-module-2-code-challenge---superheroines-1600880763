class HeroinePower < ApplicationRecord
    belongs_to :heroine 
    belongs_to :power

    validates :strength, presence: true
    validates :strength, inclusion: %w{Strong Weak Average}
end
