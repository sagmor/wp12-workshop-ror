class Todo
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes 
  
  field :title, type: String
  field :user_id, type: Integer
  field :description, type: String
  field :due_at, type: Time
  field :done_at, type: Time
  
  belongs_to :user
  
  validates :title,
    presence: true
end
