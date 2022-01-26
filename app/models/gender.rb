class Gender < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '女' },
    { id: 3, name: '男' },
  ]

  include ActiveHash::Associations
  has_many :members

end