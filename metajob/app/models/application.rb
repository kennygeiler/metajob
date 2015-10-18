class Application < ActiveRecord::Base
  belongs_to :job
  has_attached_file :attach
end
