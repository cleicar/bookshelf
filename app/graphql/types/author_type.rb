module Types
  class AuthorType < Types::BaseObject
    description "One author"
    
    field :id, ID, null: false
    field :first_name, String, null: true, camelize: false
    field :last_name, String, null: true
    field :yob, Int, null: false
    field :is_alive, Boolean, null: true
  end
end