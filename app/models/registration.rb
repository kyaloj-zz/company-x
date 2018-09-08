class Registration
  include ActiveModel::Model
  attr_accessor :company_name, :user_name, :user_email, :user_password

  def register_user
    company = Company.create(name: company_name)
    user = company.users.create(name: user_name, email: user_email, password: Base64.encode64(user_password) )
  end
end
