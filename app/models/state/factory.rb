module State
  class Factory < ::Factory
    def types
      {
        title: Title,
        town: Town,
        battle: Battle
      }
    end
  end
end
