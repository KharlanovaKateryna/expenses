
namespace :exec do
    desc 'Add expenses'
    task :add_expenses, [:cat, :date, :name, :amount] do |t, args|
        options = {}
        opts = OptionParser.new
        opts.banner = "Usage: rake add [options]"
        opts.on("-c", "--category", String) { |cat| options[:cat] = cat }
        opts.on("-v", "--date", Date.parse) { |date| options[:date] = date }
        opts.on("-a", "--name", String) { |name| options[:name] = name }
        opts.on("-t", "--amount", Integer) { |amount| options[:amount] = amount }
        args = opts.order!(ARGV) {}
        opts.parse!(args)
        # ExpenseService.create(options)
        puts "Your record for#{options[:cat]} category succesfully added"
        puts "Your record for#{options[:date]} date succesfully added"
        puts "Your record for#{options[:name]} name succesfully added"
        puts "Your record for#{options[:amount]} amount succesfully added"
        exit
    end

    desc 'Get statistics'
    task :get_stats, [:date, :per, :cat, :name] do |t, args|
        options = {}
        opts = OptionParser.new
        opts.banner = "Usage: rake add [options]"
        opts.on("-v", "--date", Date.parse) { |date| options[:date] = date }
        opts.on("-l", "--period", String) { |per| options[:per] = per }
        opts.on("-c", "--category", String) { |cat| options[:cat] = cat }
        opts.on("-a", "--name", String) { |name| options[:name] = name }
        args = opts.order!(ARGV) {}
        opts.parse!(args)

        puts "Here is your statistic for #{options[:date]} date"
        puts "Here is your statistic for #{options[:per]} period"
        puts "Here is your statistic for #{options[:cat]} category"
        puts "Here is your statistic for #{options[:name]} name"
        exit
    end

    desc 'Add New Users'
        task :add_new_user, [:name] do |t, args|
        options = {}
        opts = OptionParser.new
        opts.banner = "Usage: rake add [options]"
        opts.on("-a", "--name", String) { |name| options[:name] = name }
        args = opts.order!(ARGV) {}
        opts.parse!(args)

        puts "New user with name #{options[:name]} has been added succesfully!"
        exit
    end
end

