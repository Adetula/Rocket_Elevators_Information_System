namespace :dwh do
    desc "Should I buy bitcoin?"
    task say_hello: :environment do
        puts "I think so!"
    end
end