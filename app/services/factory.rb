class Factory
  def initialize(type)
    @type = type
  end

  def self.get(type)
    new(type).get
  end

  def get
    types.fetch(@type, &method(:type_not_found))
  end

  private

  def type_not_found(type)
    raise NotImplementedError, "Type #{type} doesnt exists for class #{self.class}"
  end
end
