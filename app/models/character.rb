class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    first_name
    last_name
  end

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

end
