class Message
  extend  ActiveModel::Naming
  include ActiveModel::Validations
  include ActiveModel::Conversion
  attr_accessor :name, :email, :subject, :body
  validates :name, :email, :subject, :body, :presence => true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end
