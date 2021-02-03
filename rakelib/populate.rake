namespace :populate do
  # Create everything
  task all: :environment do
    Rake::Task['populate:posts'].invoke
  end

  task users: :environment do
    repository = UserRepository.new
    repository.create(
      email: 'admin@test.com',
      name: 'admin',
      encrypted_password: BCrypt::Password.create(ENV.fetch('ADMIN_PASSWORD'))
    )
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
