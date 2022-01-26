class Insurance < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '加入' },
    { id: 3, name: '未加入' },
  ]

  include ActiveHash::Associations
  has_many :members

end