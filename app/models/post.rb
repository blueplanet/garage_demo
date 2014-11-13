class Post < ActiveRecord::Base
  belongs_to :user

  include Garage::Representer
  include Garage::Authorizable

  property :id
  property :title
  property :body

  def self.build_permissions(perms, other, target)
    perms.permits! :read
  end
end
