module Api
  module Controllers
    module Graphql
      class Index
        include Api::Action

        params do
          required(:query) { filled? & str? }
          optional(:variables).maybe(:hash?)
        end

        def call(params)
          query_variables = params[:vairables] || {}
          self.body = JSON.generate(
            ::AppSchema.execute(
              params[:query],
              variables: query_variables
            )
          )
        end
      end
    end
  end
end
