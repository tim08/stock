class CheckRatingJob < ApplicationJob
  queue_as :default

  def perform(*args)
    p 'check rating'
  end
end
