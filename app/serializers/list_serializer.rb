class ListSerializer
  attributes :name
  has_many :players, only: [:name, :score]

  def players
    self.object.players.map do |p|
      {
        name: p.name,
        score: p.score
      }
    end
  end
end
