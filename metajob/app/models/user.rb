class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  before_create :generate_code

  def generate_code
    self.ref_code = rand(36**8).to_s(36);
  end

end
