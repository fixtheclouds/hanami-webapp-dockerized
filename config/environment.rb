require 'bundler/setup'
require 'hanami/setup'
require 'hanami/model'
require_relative '../lib/web'
require_relative '../apps/admin/application'
require_relative '../apps/api/application'

Hanami.configure do
  mount Api::Application, at: '/api'
  mount Admin::Application, at: '/admin'

  model do
    ##
    # Database adapter
    #
    # Available options:
    #
    #  * SQL adapter
    #    adapter :sql, 'sqlite://db/sample_site_development.sqlite3'
    #    adapter :sql, 'postgresql://localhost/sample_site_development'
    #    adapter :sql, 'mysql://localhost/sample_site_development'
    #
    adapter :sql, ENV.fetch('DATABASE_URL')

    ##
    # Migrations
    #
    migrations 'db/migrations'
    schema     'db/schema.sql'
  end

  mailer do
    root 'lib/web/mailers'

    # See https://guides.hanamirb.org/mailers/delivery
    delivery :test
  end

  environment :development do
    # See: https://guides.hanamirb.org/projects/logging
    logger level: :debug
  end

  environment :production do
    logger level: :info, formatter: :json, filter: []

    mailer do
      delivery :smtp, address: ENV.fetch('SMTP_HOST'), port: ENV.fetch('SMTP_PORT')
    end
  end
end
