class Contact < ApplicationRecord

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def add_japan_prefix
    "+81 #{phone_number}"
  end

  def friendly_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end


  def all_john
    if first_name == "john"
      first_name
    end
  end
end
