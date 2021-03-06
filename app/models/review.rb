class Review < ActiveRecord::Base

  belongs_to :user
  belongs_to :product

  validates :product_id, :user_id, presence: true
  validates :rating, inclusion: { in: 1..5 }

  def owner?
    self.user_id == current_user.id
  end

end
