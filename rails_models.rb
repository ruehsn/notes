# Validations
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :password, length: 8..15
  validates :image_url, allow_blank: true, format: { 
    with: %r{\. (gif|jpg|png) \Z}i,
    message: =must be a URL for GIF, JPG or PNG image.=}
  validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/ }
  validates_uniqueness_of :user_id, scope: :plan_id, message: "User can only have one subscription!"


# app/models/user.rb
class User < ApplicationRecord
  validates :active, inclusion: {in: [true false]}, on: :email_confirmation

  def email_confirmation
      # email confirmation logic here..
  end
end
  
#
class User < ApplicationRecord
    # validate phone number on condition
    validates :phone_number, presence: true, if :email_confirmed

    # assumes the user has confirmed their email
    def email_confirmed
        !confirmed.blank?
    end
end



#relationships:


# app/models/user.rb
class User < ApplicationRecord
  has_many :subscriptions
  has_many :plans, through: :subscriptions
end
# app/models/plan.rb
class Plan < ApplicationRecord
  has_many :subscriptions
  has_many :users, through: :subscriptions
end

# app/models/subscription.rb
class Subscription < ApplicationRecord
belongs_to :plan
belongs_to :user
end
