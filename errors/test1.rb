require 'debug'

module ErrorHandler
  class MyErrorHandler < StandardError

  end
end

begin
  raise 'this is an exception'
rescue StandardError => e
  debugger
  puts "Errors: #{e.message}"
end