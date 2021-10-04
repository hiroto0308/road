class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '未設定' },
    { id: 2, name: '完了' },
    { id: 3, name: '予定' }
  ]

  include ActiveHash::Associations
  has_many :rooads
end
