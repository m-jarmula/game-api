module State
  class Town
    def self.to_api
      {
        assets: {
          map_tileset: {
            type: 'image',
            source: 'img/tileset.png'
          },
          villager_image: {
            type: 'image',
            source: 'img/world/villager.png'
          },
          guard_image: {
            type: 'image',
            source: 'img/world/knight.png'
          },
          message_box_image: {
            type: 'image',
            source: 'img/world/message_box.png'
          },

          player_spritesheet: {
            type: 'spritesheet',
            source: 'img/world/player.png',
            frame_width: 16,
            frame_height: 16
          },

          level_tilemap: {
            type: 'tilemap',
            source: Rails.application.routes.url_helpers.map_url('town')
          }
        },
        groups: [
          'players',
          'doors',
          'npcs',
          'tools',
          'main_player'
        ],
        map: {
          key: 'level_tilemap',
          tilesets: ['map_tileset']
        },
        userInput: {
          world_map_user_input: 'user-inputs/world_map_user_input.json',
          talking_user_input: 'user-inputs/talking_user_input.json'
        },
        initial_user_input: 'world_map_user_input',
        npcMessages: {
          villager_message: 'npc_messages/villager.message.txt',
          guard_message: 'npc_messages/guard.message.txt'
        }
      }
    end
  end
end
