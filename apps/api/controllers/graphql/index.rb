module Api
  module Controllers
    module Graphql
      class Index
        include Api::Action

        def call(params)
          query_variables = params[:vairables] || {}
          self.body = JSON.generate(
            ::Types::Schema.execute(
              params[:query],
              variables: query_variables
            )
          )
        end
      end
    end
  end
end
