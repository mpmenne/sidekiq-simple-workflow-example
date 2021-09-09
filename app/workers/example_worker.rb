class ExampleWorker
  include Sidekiq::Worker

  def perform
    logger.info("~~~~~~~~~~#{self.class} is running~~~~~~~~~~~~~~")
  end
end

