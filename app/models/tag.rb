class Tag
  include Mongoid::Document
  include Mongoid::Timestamps::Updated
  field :name, type: String

  validates :name, presence:true
end
