class Area < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ー' },
    { id: 2, name: '〜15' },
    { id: 3, name: '16〜20' },
    { id: 4, name: '21〜25' },
    { id: 5, name: '26〜30' },
    { id: 6, name: '31〜35' },
    { id: 7, name: '36〜40' },
    { id: 8, name: '41〜45' },
    { id: 9, name: '46〜50' },
    { id: 10, name: '51〜55' },
    { id: 11, name: '56〜60' },
    { id: 12, name: '61〜65' },
    { id: 13, name: '66〜70' },
    { id: 14, name: '71以上' }
  ]

  include ActiveHash::Associations
  has_many :users
end
