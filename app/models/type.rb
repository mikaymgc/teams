class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '月会費' },
    { id: 3, name: '年会費' },
    { id: 4, name: 'ビジター' },
  ]

  include ActiveHash::Associations
  has_many :members

end