class Condition < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '使用感がなく良好な状態' },
    { id: 3, name: '使用感はあるが、まだまだ使用可能' },
    { id: 4, name: '使用可能だが、汚れ・キズ等が目立つ' }
  ]

    include ActiveHash::Associations
    has_many :item

  end