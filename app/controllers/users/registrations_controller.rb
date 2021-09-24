class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_account_update_params, only: [:update]
  before_action :ensure_normal_user, only: %i[update destroy]
  
  def ensure_normal_user
    redirect_to root_path, alert: 'ゲストユーザーは削除・更新できません。' if resource.email == 'guest@example.com'
  end

  protected
  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def after_update_path_for(_resource)
    rooads_path
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :area_id, :gender_id, :profile, :image])
  end
end
