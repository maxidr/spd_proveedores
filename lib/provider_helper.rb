class ProviderHelper
  
  attr_reader :user, :provider
  
  def initialize(user = User.current)
    @user = user
    @provider = Provider.by_user(user)
  end

  def are_provider?
    @provider != nil
  end

  def can_subscribe_to?(project)
     are_provider? && !already_subscribed?(project)
  end

  def already_subscribed?(project)
    ProjectProvider.by_project_and_provider(project, provider) != nil
  end
end
