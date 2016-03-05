# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# command "/usr/bin/some_great_command"
# runner "MyModel.some_method"
# rake "some:great:rake:task"

every 1.hourse do
  set :environment, 'development'
  rake "soap:update_data", :output => {:error => 'log/cron_error.log', :standard => 'log/cron.log'}
end

# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever