class ProvidersController < ApplicationController
  unloadable

  before_filter :only_admin

  def index
    @providers = Provider.all
  end

  def new
    @users = User.logged.status(User::STATUS_ACTIVE)
    @provider_categories = ProviderCategory.all
  end

  def create
    user = User.find(params[:user_id])
    categories = ProviderCategory.where(id: params[:services_ids])
    provider = Provider.new(user: user, categories: categories) 
    if provider.save
      flash[:notice] = 'Se dio de alta el nuevo proveedor' 
      redirect_to(:controller => :providers, :action => :index)
    else
      render :action => 'new' 
    end
  end

  def edit
    @provider = Provider.find(params[:id])
    @provider_categories = ProviderCategory.all
  end

  def update
    @provider = Provider.find(params[:id])
    @provider.update_attributes(params[:provider])
    flash[:notice] = 'Proveedor actualizado'
    redirect_to :providers
  end

  private

  def only_admin
    render_403 unless User.current.admin?
  end
end
