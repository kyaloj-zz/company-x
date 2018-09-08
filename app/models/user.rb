class User < ApplicationRecord
  belongs_to :company
  after_create :send_welcome_mail

  def send_welcome_mail
    # send some nice email in a background job
  end
end
