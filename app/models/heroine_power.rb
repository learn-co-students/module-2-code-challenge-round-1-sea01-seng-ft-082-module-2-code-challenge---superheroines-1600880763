class HeroinePower < ApplicationRecord
    belongs_to :heroine
    belongs_to :power

    validates_inclusion_of :strength, :in => %w(Strong Average Weak),
        :message => "Strength must be Strong, Average or Weak"
    validates :power_id, uniqueness:true
end
