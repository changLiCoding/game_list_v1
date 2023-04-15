module Mutations
  module Users
    class RegisterUser < Mutations::BaseMutation
      argument :name, String, required: true
      argument :email, String, required: true
      argument :password, String, required: true

      field :user, Types::User::UserType, null: false
      field :errors, [String], null: false

      def resolve(name:, email:, password:)
        user = User.new(username: name, email: email, password: password)
        if user.save
          {
            user: user,
            errors: [],
          }
        else
          {
            user: nil,
            errors: user.errors.full_messages,
          }
        end
      end
    end
  end
end
