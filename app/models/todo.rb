class Todo
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes 
  
  field :title, type: String
  field :user_id, type: Integer
  field :description, type: String
  field :due_at, type: Time
  field :done_at, type: Time
  
  scope :pending, where(done_at: nil)
  
  belongs_to :user
  
  validates :title,
    presence: true
  
  def done!
    self.update_attributes done_at: Time.now
  end
  
  def undone!
    self.update_attributes done_at: nil
  end
  
  def done?
    self.done_at?
  end
  
end
