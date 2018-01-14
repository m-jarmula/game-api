module Map
  class Town
    def initialize(current_user)
      @current_user = current_user
    end

    def self.to_api(current_user)
      new(current_user).to_api
    end

    def to_api
      {
        height: 15,
        layers: [{
          data: [4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4],
          height: 15,
          name: 'background',
          opacity: 1,
          type: 'tilelayer',
          visible: true,
          width: 20,
          x: 0,
          y: 0
        }, {
          data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 123, 123, 123, 123, 0, 0, 0, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 123, 123, 123, 123, 62, 62, 62, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 123, 123, 123, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 123, 123, 123, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 123, 123, 123, 123, 62, 62, 62, 62, 83, 0, 0, 0, 0, 0, 0, 81, 62, 62, 62, 123, 123, 123, 123, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 62, 62, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          height: 15,
          name: 'roads',
          opacity: 1,
          type: 'tilelayer',
          visible: true,
          width: 20,
          x: 0,
          y: 0
        }, {
          data: [114, 114, 114, 114, 114, 114, 114, 0, 64, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 114, 114, 114, 150, 150, 114, 0, 68, 84, 85, 68, 0, 0, 52, 0, 0, 90, 0, 0, 0, 114, 114, 150, 150, 150, 150, 0, 88, 104, 105, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 114, 114, 150, 150, 150, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 96, 0, 114, 114, 150, 150, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 116, 0, 0, 0, 0, 0, 0, 0, 0, 196, 197, 0, 196, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 52, 52, 0, 216, 217, 107, 216, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 129, 0, 0, 0, 0, 0, 0, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 114, 0, 0, 0, 0, 149, 0, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 150, 150, 114, 114, 150, 150, 150, 0, 0, 0, 0, 0, 0, 0, 95, 96, 0, 0, 0, 150, 150, 150, 114, 114, 150, 150, 150, 114, 114, 0, 0, 0, 0, 0, 115, 116, 0, 0, 0, 150, 150, 114, 114, 114, 150, 150, 150, 114, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 114, 114, 114, 114, 114],
          height: 15,
          name: 'buildings',
          opacity: 1,
          properties: {
            collision: true
          },
          propertytypes: {
            collision: 'bool'
          },
          type: 'tilelayer',
          visible: true,
          width: 20,
          x: 0,
          y: 0
        }, {
          draworder: 'topdown',
          height: 0,
          name: 'objects',
          objects: players + [{
            height: 32,
            id: 2,
            name: 'door',
            properties: {
              group: 'doors',
              next_level: '..\/states\/cave.json'
            },
            propertytypes: {
              group: 'string',
              next_level: 'string'
            },
            rotation: 0,
            type: 'door',
            visible: true,
            width: 32,
            x: 511.333,
            y: 38.6667
          }, {
            height: 32,
            id: 3,
            name: 'villager',
            properties: {
              group: 'npcs',
              message: 'villager_message',
              texture: 'villager_image'
            },
            propertytypes: {
              group: 'string',
              message: 'string',
              texture: 'string'
            },
            rotation: 0,
            type: 'npc',
            visible: true,
            width: 32,
            x: 448,
            y: 288
          }, {
            height: 32,
            id: 5,
            name: 'guard',
            properties: {
              group: 'npcs',
              message: 'guard_message',
              texture: 'guard_image'
            },
            propertytypes: {
              group: 'string',
              message: 'string',
              texture: 'string'
            },
            rotation: 0,
            type: 'npc',
            visible: true,
            width: 32,
            x: 288,
            y: 96
          }],
          opacity: 1,
          type: 'objectgroup',
          visible: true,
          width: 0,
          x: 0,
          y: 0
        }],
        nextobjectid: 6,
        orientation: 'orthogonal',
        renderorder: 'right-down',
        tileheight: 32,
        tilesets: [{
          columns: 20,
          firstgid: 1,
          image: 'img\/tileset.png',
          imageheight: 384,
          imagewidth: 640,
          margin: 0,
          name: 'tileset',
          spacing: 0,
          tilecount: 240,
          tileheight: 32,
          tileproperties: {
            '51' => {
              collision: true
            }
          },
          tilepropertytypes: {
            '51' => {
              collision: 'bool'
            }
          },
          tilewidth: 32
        }],
        tilewidth: 32,
        version: 1,
        width: 20
      }
    end

    def players
      User.all.joins(:player).map do |user|
        {
          height: 32,
          id: 1,
          name: 'player' + user.id.to_s,
          properties: {
            user_id: user.id,
            group: @current_user.id == user.id ? 'main_player' : 'players',
            texture: 'player_spritesheet',
            walkingSpeed: 50
          },
          propertytypes: {
            user_id: 'int',
            group: 'string',
            texture: 'string',
            walkingSpeed: 'int'
          },
          rotation: 0,
          type: @current_user.id == user.id ? 'main_player' : 'player',
          visible: true,
          width: 32,
          x: user.player.x,
          y: user.player.y
        }
      end
    end
  end
end
