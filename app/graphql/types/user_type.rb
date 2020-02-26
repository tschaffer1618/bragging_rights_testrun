module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: true
    field :gameplays, [Types::GameplayType], null: true
    field :gameplays_count, Integer, null: true

    def gameplays_count
      object.gameplays.size
    end
  end
end
