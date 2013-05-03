module ProvidersHelper
  def category_list_resume(categories)
    categories.map { |category| "#{category.service}: #{category.mode}" }.to_sentence
  end
end
