module State
  class Factory < ::Factory
    def types
      {
        title: Title,
        town: Town
      }
    end
  end
end
