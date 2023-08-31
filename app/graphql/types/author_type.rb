module Types
  class AuthorType < Types::BaseObject
    description "One author"

    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :yob, Int, null: false
    field :is_alive, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false

    field :full_name, String, null: false

    def full_name
      "#{object.first_name} #{object.last_name}"
    end

    field :coordinates, Types::CoordinatesType, null: false

    field :publication_years, [Int], null: false
  end
end
