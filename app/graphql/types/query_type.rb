module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.

    field :title, String, null: false, description: "An example field added by the generator" do 
      argument :name, String, required: true
    end

    field :author, Types::AuthorType, null: true, description: "Returns the author" do 
      argument :id, ID, required: true
    end

    def title(name:)
      "Hello #{name}!"
    end
    
    def author(id:)
      Author.where(id: id).first
    end
  end
end
