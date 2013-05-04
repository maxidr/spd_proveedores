require File.expand_path('../../test_helper', __FILE__)

class ProviderActionsTest < ActiveSupport::TestCase
  fixtures :users

  test 'the truth' do
    @user = User.find(4)
    provider = Provider.by_user(@user)
    action = ProviderActions.new(provider)
  end


end
