class PlayerSerializer < ApplicationSerializer
  def initialize(current_user, referer)
    super(referer)
    @current_user = current_user
  end

  def to_api
    {
      height: 32,
      id: 1,
      name: "player#{referer.user.id}",
      properties: {
        user_id: referer.user.id,
        group: @current_user.id == referer.user.id ? 'main_player' : 'players',
        texture: 'player_spritesheet',
        walkingSpeed: 50,
        player_name: referer.name
      },
      propertytypes: {
        user_id: 'int',
        group: 'string',
        texture: 'string',
        walkingSpeed: 'int',
        player_name: 'string'
      },
      rotation: 0,
      type: @current_user.id == referer.user.id ? 'main_player' : 'player',
      visible: true,
      width: 32,
      x: referer.x,
      y: referer.y
    }
  end
end
