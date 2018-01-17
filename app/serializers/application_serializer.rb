class ApplicationSerializer
  def initialize(referer)
    @referer = referer
  end

  def self.to_api(referer)
    new(referer).to_api
  end

  private

  attr_reader :referer
end
