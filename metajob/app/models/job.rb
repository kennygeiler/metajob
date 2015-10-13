class Job < ActiveRecord::Base
  has_many :applications
  belongs_to :company
end
