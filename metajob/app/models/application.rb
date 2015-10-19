class Application < ActiveRecord::Base
  belongs_to :job
  has_attached_file :document
  validates_attachment :document, :content_type => { :content_type => %w(application/pdf) }
end
