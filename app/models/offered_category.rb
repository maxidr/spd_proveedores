class OfferedCategory < ActiveRecord::Base
  unloadable

  belongs_to :provider
  belongs_to :provider_category
end
