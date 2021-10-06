require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'nicknameとemail、passwordとpassword_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
      it 'passwordが6文字以上の半角英数字を両方使用であれば登録できる' do
        @user.password = 'aaa000'
        @user.password_confirmation = 'aaa000'
        expect(@user).to be_valid
      end
      it 'area_idが0でも登録できる' do
        @user.area_id = 0
        expect(@user).to be_valid
      end
      it 'gender_idが0でも登録できる' do
        @user.gender_id = 0
        expect(@user).to be_valid
      end
      it 'profileが空でも登録できる' do
        @user.profile = ''
        expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "ニックネームを入力してください"
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Eメールを入力してください"
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "パスワードを入力してください"
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = 'aaa000'
        @user.password_confirmation = '000aaa'
        @user.valid?
        expect(@user.errors.full_messages).to include "パスワード（確認用）とパスワードの入力が一致しません"
      end
      it 'nicknameが11文字以上では登録できない' do
        @user.nickname = '12345678901'
        @user.valid?
        expect(@user.errors.full_messages).to include "ニックネームは10文字以内で入力してください"
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = 'a0000'
        @user.password_confirmation = 'a0000'
        @user.valid?
        binding.pry
        expect(@user.errors.full_messages).to include "パスワードは6文字以上で入力してくださ"
      end
    end
  end

end