class Provider < ActiveRecord::Base
  unloadable

  belongs_to :user

  has_many :offered_categories
  has_many :categories, through: :offered_categories, 
    class_name: 'ProviderCategory', source: :provider_category

  has_many :project_providers
  has_many :projects, through: :project_providers

  validates_uniqueness_of :user_id
  validates_presence_of :categories

  delegate :name, to: :user

  # Find provider by project id
  scope :by_project, lambda { |project| self.joins(:project_providers).where('project_providers.project_id = ?', project.id)  }
  
  def self.by_user(user)
    where(:user_id => user.id).first
  end
end
