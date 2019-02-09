class Concourse < ApplicationRecord

  has_many :users
  has_one_attached :image

  after_create :update_slug
  before_update :assign_slug

  def to_param
    slug
  end


  def assign_slug
    self.slug = params[:url]
  end

  def update_slug
    update_attributes slug: assign_slug
  end
end
