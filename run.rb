require 'rubygems'
require 'oauth'
require 'json'

consumer = OAuth::Consumer.new('m6XfTNV4qmNG5cw7DJi79A',
                               '7uPwvtKvnwupUO8zqFFrmn05MluvuLDRfRf0BYGjO0',
                               :site => 'https://www.goodreads.com')

request_token = consumer.get_request_token

puts "Authorize bookish-octo-fiesta to access your goodreads account: " + request_token.authorize_url

puts "Waiting for access ..."

begin
   access_token = request_token.get_access_token
rescue
   retry
end

puts "Authorized successfully!"

puts "OAUTH-TOKEN: " + access_token.token
puts "OAUTH-SECRET: " + access_token.secret

puts "Please replace these keys in config.json and run Postman Collection Runner with the data file." 