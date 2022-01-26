class TechnicalGrade < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Ma' },
    { id: 3, name: 'Ex' },
    { id: 4, name: 'S-Ex' },
    { id: 5, name: 'Sp' },
    { id: 6, name: 'S-Sp' },
    { id: 7, name: '1級' },
    { id: 8, name: '2級' },
    { id: 9, name: '3級' },
    { id: 10, name: '4級' },
  ]

  include ActiveHash::Associations
  has_many :members

end