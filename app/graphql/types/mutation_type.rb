module Types
  class MutationType < Types::BaseObject
    field :register, mutation: Mutations::Users::RegisterUser
    field :update_user, mutation: Mutations::Users::UpdateUser
    field :login, mutation: Mutations::Users::LoginUser

    field :add_user_games, mutation: Mutations::UserGames::AddUserGames
    field :delete_user_games, mutation: Mutations::UserGames::DeleteUserGames
  end
end
