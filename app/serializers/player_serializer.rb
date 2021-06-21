class PlayerSerializer
  attributes :name, :score, :list

  belongs_to :list, only: [:name]
end
