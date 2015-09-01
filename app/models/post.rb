class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :post_tags
  has_many :tags, :through => :post_tags

  # step one add this here, then add the attribute on the posts controller private method
  accepts_nested_attributes_for :tags
  validates_presence_of :name, :content
end
