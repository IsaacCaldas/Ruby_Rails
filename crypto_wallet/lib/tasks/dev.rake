namespace :dev do
  desc "Setting the development's environment"
  task setup: :environment do
    if Rails.env.development?

      show_spinner("Dropping database", "Droped database") { %x(rails db:drop) }

      show_spinner("Creating database", "Created database") { %x(rails db:create) }

      show_spinner("Migrating database", "Migrated database") { %x(rails db:migrate) }
      
      puts "Seeding database..."
      show_spinner("Seeding database", "Database seeded") { %x(rails dev:add_mining_types dev:add_coins) }

      puts ""
      spinner = TTY::Spinner.new("[:spinner] Finishing tasks...")
      spinner.success('(Successfuly tasks!)')

    else
      puts "You are not in DEVELOPMENT environment."
    end
  end
  
  desc "Coins register"
  task add_coins: :environment do
    
    show_spinner("    Registering coins", "Coins registered") do

      coins = [
        {
          description: "Bitcoin",
          acronym: "BTC",
          url_image: "https://bitcoin.org/img/icons/opengraph.png?1644775669",
          mining_type: MiningType.find_by(acronym: 'PoW')
        },
        {
          description: "Ethereum",
          acronym: "ETH",
          url_image: "https://seeklogo.com/images/E/ethereum-logo-DE26DD608D-seeklogo.com.png",
          mining_type: MiningType.all.sample
        },
        {
          description: "Iota",
          acronym: "IOT",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/1720.png",
          mining_type: MiningType.all.sample
        },
        {
          description: "ZCash",
          acronym: "ZEC",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/1437.png",
          mining_type: MiningType.all.sample
        },
        {
          description: "Cardano",
          acronym: "ADA",
          url_image: "https://coins.com.br/img/criptos/ada.png",
          mining_type: MiningType.all.sample
        }
      ]

      coins.each do |coin|
        Coin.find_or_create_by!(coin)
      end

    end
  end

  desc "Mining types register"
  task add_mining_types: :environment do
  
    show_spinner("    Registering mining types", "Mining types registered") do 

      mining_types = [
        {
          description: "Proof of Work",
          acronym: "PoW"
        },
        {
          description: "Proof of Stake",
          acronym: "PoS"
        },
        {
          description: "Proof of Capacity",
          acronym: "PoC"
        }
      ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end 
  
  private

  def show_spinner(msg_start, msg_end)
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}... ")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end


end
