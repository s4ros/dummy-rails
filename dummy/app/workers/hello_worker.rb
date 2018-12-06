# app/workers/hello.rb
class HelloWorker
  include Sidekiq::Worker

  def perform(project_id)
    logger.info "Things are happening."
    logger.debug "Here's some info: #{hash.inspect}"
  end
end

# Hello.new.perform(@project.id)  ## NOT BACKGROUND
HelloWorker.perform_async(@project.id)
