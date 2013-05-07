# encoding: utf-8
class ProviderCategoriesController < ApplicationController
  unloadable

  before_filter :only_admin

  def new
    @category = ProviderCategory.new
  end

  def create
    @category = ProviderCategory.new(params[:provider_category])
    if @category.save
      flash[:notice] = 'Se dio de alta la nueva categoría de servicio'
      redirect_to category_settings_path
    else
      render action: :new
    end
  end

  def edit
    @category = ProviderCategory.find(params[:id])
  end

  def update
    @category = ProviderCategory.find(params[:id])
    if @category.update_attributes(params[:provider_category])
      flash[:notice] = 'Se actualizó la categoría de servicio'
      redirect_to category_settings_path
    else
      render action: :edit
    end
  end

  private

  def category_settings_path
    providers_path(tab: 'ServiceCategories')
  end

  def only_admin
    render_403 unless User.current.admin?
  end

end
