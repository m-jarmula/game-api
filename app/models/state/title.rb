module State
  class Title
    def self.to_api
      {
        assets: {
          background_image: {
            type: 'image',
            source: 'img/battle/background.png'
          }
        },
        groups: [
          'background',
          'texts'
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
              group: 'background'
            }
          },
          title_message: {
            type: 'text',
            position: {
              x: 20,
              y: 200
            },
            properties: {
              style: {
                font: '65px Kells',
                fill: '#000000'
              },
              text: 'Phaser RPG',
              group: 'texts'
            }
          },
          start_message: {
            type: 'text',
            position: {
              x: 150,
              y: 400
            },
            properties: {
              style: {
                font: '20px Kells',
                fill: '#000000'
              },
              text: 'click to start playing',
              group: 'texts'
            }
          }
        },
        userInput: {
          title_user_input: 'user-inputs/title_user_input.json'
        },
        initial_user_input: 'title_user_input'
      }
    end
  end
end
