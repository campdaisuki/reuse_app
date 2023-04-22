class Receive < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '現地での受け取り' },
    { id: 3, name: '自宅まで持ってきてほしい' },
  ]

    include ActiveHash::Associations
    has_many :items

  end