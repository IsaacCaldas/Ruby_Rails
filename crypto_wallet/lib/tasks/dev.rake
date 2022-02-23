namespace :dev do
  desc "Setting the development's environment"
  task setup: :environment do
    puts %x(rails db:drop db:create db:migrate db:seed)
  end

end
