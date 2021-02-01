module Admin
  module Controllers
    module Home
      class Index
        include Web::Action

        expose :posts

        def call(params)
          @posts = PostRepository.new.all
        end
      end
    end
  end
end
