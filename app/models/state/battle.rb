module State
  class Battle
    def self.to_api
      {
        assets: {
          background_image: {
            type: 'image',
            source: 'img/battle/background.png'
          },
          warrior_spritesheet: {
            type: 'spritesheet',
            source: 'img/battle/warrior.png',
            frame_width: 240,
            frame_height: 104
          },
          mage_spritesheet: {
            type: 'spritesheet',
            source: 'img/battle/mage.png',
            frame_width: 151,
            frame_height: 100
          },
          snake_spritesheet: {
            type: 'spritesheet',
            source: 'img/battle/snake.png',
            frame_width: 147,
            frame_height: 94
          }
        },
        groups: [
          'background',
          'player_units',
          'enemy_units'
        ],
        prefabs: {
          background: {
            type: 'background',
            position: {
              x: 0,
              y: 0
            },
            properties: {
              texture: 'background_image',
              group: 'background',
              scale: { x: 1.0, y: 0.7 }
            }
          },
          warrior: {
            type: 'player_unit',
            position: { x: 500, y: 180 },
            properties: {
              texture:  'warrior_spritesheet',
              group: 'player_units',
              scale: { x: 0.7, y: 0.7 },
              anchor: { x: 0.5, y: 0.5 }
            }
          },
          mage: {
            type: 'player_unit',
            position: { x: 500, y: 250 },
            properties: {
              texture:  'mage_spritesheet',
              group: 'player_units',
              scale: { x: 0.7, y: 0.7 },
              anchor: { x: 0.5, y: 0.5 }
            }
          },
          snake1: {
            type: 'enemy_unit',
            position: { x: 100, y: 180 },
            properties: {
              texture:  'snake_spritesheet',
              group: 'enemy_units',
              scale: { x: 0.7, y: 0.7 },
              anchor: { x: 0.5, y: 0.5 }
            }
          },
          snake2: {
            type: 'enemy_unit',
            position: { x: 100, y: 250 },
            properties: {
              texture:  'snake_spritesheet',
              group: 'enemy_units',
              scale: { x: 0.7, y: 0.7 },
              anchor: { x: 0.5, y: 0.5 }
            }
          }
        }
      }
    end
  end
end
