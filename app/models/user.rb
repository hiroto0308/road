class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
    validates :nickname, length: { maximum: 10 }
    validates :password, on: :create
  end
  

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX }, allow_blank: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :area
  has_one_attached :image
  has_many :likes

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.nickname = 'ゲスト'
      
    end
  end

  def liked_by?(rooad_id)
    likes.where(rooad_id: rooad_id).exists?
  end

  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end
end
