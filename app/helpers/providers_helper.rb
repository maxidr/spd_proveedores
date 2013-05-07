# encoding: UTF-8
module ProvidersHelper
  def category_list_resume(categories)
    categories.map { |category| "#{category.service}: #{category.mode}" }.to_sentence
  end

  def provider_tabs
    tabs = [
      { name: 'Providers', partial: 'providers/providers', label: 'spd_providers.settings.providers' },
      { name: 'ServiceCategories', partial: 'providers/service_categories', label: 'spd_providers.settings.categories' }
    ]
  end
end
