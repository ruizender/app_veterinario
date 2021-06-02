class Pet < ApplicationRecord
  belongs_to :client
  has_many :pet_histories, dependent: :destroy

  def history_count
    pet_histories.count
  end

  def avg_weight
    pet_histories.sum(:weight) / pet_histories.count(:weight)
  end

  def avg_height
    pet_histories.sum(:heigth) / pet_histories.count(:heigth)
  end

  def max_weight
    pet_histories.maximum(:weight)
  end

  def max_height
    pet_histories.maximum(:heigth)
  end

end
