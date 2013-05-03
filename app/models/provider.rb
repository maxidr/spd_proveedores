class Provider < ActiveRecord::Base
  unloadable

  belongs_to :user

  has_many :offered_categories
  has_many :categories, through: :offered_categories, 
    class_name: 'ProviderCategory', source: :provider_category

  validates_uniqueness_of :user_id
  validates_presence_of :categories

end
