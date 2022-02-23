namespace :dev do
  desc "Setting the development's environment"
  task setup: :environment do
    if Rails.env.development?

      show_spinner("Dropping database", "Droped database") { %x(rails db:drop) }

      show_spinner("Creating database", "Created database") { %x(rails db:create) }

      show_spinner("Migrating database", "Migrated database") { %x(rails db:migrate) }

      show_spinner("Seeding database", "Database seeded") { %x(rails db:seed) }

      puts ""
      spinner = TTY::Spinner.new("[:spinner] Finishing tasks...")
      spinner.success('(Successfuly tasks!)')

    else
      puts "You are not in DEVELOPMENT environment."
    end
  end

  def show_spinner(msg_start, msg_end)
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}... ")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end

end
