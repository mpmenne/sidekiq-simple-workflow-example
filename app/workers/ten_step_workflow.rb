class TenStepWorkflow
  include Sidekiq::Worker
  include Sidekiq::SimpleWorkflow

  def perform(*args)
    start_workflow(*args)
  end

  (1..10).each do |step|
    define_method "step_#{step}" do |_, options|
      logger.info("^^^^^^^^^^^^^^^^^#{self.class} step #{step}^^^^^^^^^^^^^^^^^^^^^^^")
    end
  end
end
