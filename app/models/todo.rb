class Todo
  include Mongoid::Document
  field :title, type: String
  field :user_id, type: Integer
  field :description, type: String
  field :due_at, type: Time
  field :done_at, type: Time
  
  
end
