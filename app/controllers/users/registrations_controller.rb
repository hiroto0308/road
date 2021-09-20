class Users::RegistrationsController < Devise::RegistrationsController
  before_action :ensure_normal_user, only: %i[update destroy]

  def ensure_normal_user
    redirect_to root_path, alert: 'ゲストユーザーは削除・更新できません。' if resource.email == 'guest@example.com'
  end
end
