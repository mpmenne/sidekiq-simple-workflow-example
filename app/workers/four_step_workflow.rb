class FourStepWorkflow
  include Sidekiq::Worker
  include Sidekiq::SimpleWorkflow

  def perform(*args)
    start_workflow(*args)
  end

  def step_1(_, options)
    logger.info("^^^^^^^^^^^^^^^^^#{self.class} step 1^^^^^^^^^^^^^^^^^^^^^^^")
  end

  def step_2(_, options)
    logger.info("^^^^^^^^^^^^^^^^^#{self.class} step 2^^^^^^^^^^^^^^^^^^^^^^^")
  end

  def step_3(_, options)
    logger.info("^^^^^^^^^^^^^^^^^#{self.class} step 3^^^^^^^^^^^^^^^^^^^^^^^")
  end

  def step_4(_, options)
    logger.info("^^^^^^^^^^^^^^^^^#{self.class} step 4^^^^^^^^^^^^^^^^^^^^^^^")
  end
end
