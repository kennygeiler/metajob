class Application < ActiveRecord::Base
  belongs_to :job
  mount_uploader :resume, AttachmentUploader
end
