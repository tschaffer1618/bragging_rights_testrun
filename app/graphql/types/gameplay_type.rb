module Types
  class GameplayType < Types::BaseObject
    field :id, ID, null: false
    field :winner, String, null: true
  end
end
