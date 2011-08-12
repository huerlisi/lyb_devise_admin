# Users Controller
#
# Provides a user/account management interface.
class UsersController < AuthorizedController
  helper :devise

  # Scopes
  has_scope :tagged_with
  
#  def create
#    @user = User.new(params[:user])
#    @user.person = Person.create(:type => params[:user]['role_texts'].first.to_s.camelcase) if params[:user]['role_texts'].first
#
#    create!{ users_path }
#  end
  
  # Actions
  def update
    @user = resource

    # Preset role_texts to ensure it clears roles.
    params[:user][:role_texts] ||= []

    # Test if user is allowed to change roles
    params[:user].delete(:role_texts) unless can? :manage, Role 
    
    # Don't try to update password if not provided
    if params[:user][:password].blank?
      [:password, :password_confirmation, :current_password].collect{|p| params[:user].delete(p) }
    end

    update!
  end

  def unlock
    @user = resource

    @user.unlock_access!
    
    redirect_to users_path, :notice => t('crud.flash.unlocked', :user => @user.to_s)
  end

  def current
    redirect_to current_user
  end
end
