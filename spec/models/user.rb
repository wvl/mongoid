class User
  include Mongoid::Document
  include AuthPassword

  references_one :account, :foreign_key => :creator_id
  references_many :posts, :foreign_key => :author_id, :inverse_of => :author
  field :name
  field :password

  references_many :descriptions
end
