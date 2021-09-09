require "sidekiq"
require "sidekiq/web"
require "sidekiq/pro/web"

Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
  [user, password] == [
    ENV.fetch("SIDEKIQ_USERNAME"),
    ENV.fetch("SIDEKIQ_PASSWORD"),
  ]
end

Sidekiq.configure_server do |config|
  schedule_file = Rails.root.join("config/sidekiq_schedule.yml")

  if File.exist?(schedule_file)
    sidekiq_schedule = YAML.load_file(schedule_file)

    config.periodic do |mgr|
      sidekiq_schedule.each do |item|
        mgr.register(
          item["interval"],
          item["worker_class"],
        )
      end
    end
  end
end

Sidekiq::Enterprise.unique! unless Rails.env.test?
