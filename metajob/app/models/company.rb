class Company < ActiveRecord::Base
  has_one :user, as: :meta, dependent: :destroy
end
