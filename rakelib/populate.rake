namespace :populate do
  # Create everything
  task all: :environment do
    Rake::Task['populate:posts'].invoke
  end

  # Create default posts
  task posts: :environment do
    repository = PostRepository.new
    repository.create(
      title: 'Welcome',
      body: 'Text goes here'
    )
  end
end
