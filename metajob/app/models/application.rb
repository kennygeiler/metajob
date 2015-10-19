class Application < ActiveRecord::Base
  belongs_to :job
  mount_uploader :attachment, AttachmentUploader
end
