namespace :populate do
  # Create default posts
  task :posts do
    repository = PostRepository.new
    repository.create(
      title: 'Welcome',
      body: 'Text goes here'
    )
  end
end
