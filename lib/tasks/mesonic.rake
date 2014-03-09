# encoding: utf-8
namespace :mesonic do
  # starten als: 'bundle exec rake mesonic:discovery
  # in Produktivumgebungen: 'bundle exec rake mesonic:discovery RAILS_ENV=production'
  desc "Creates dummy prices, inventories and activates products"
  task :discovery => :environment do

    tablename = "T000".downcase
    modelname = "Mesonictables"
    classname = tablename.upcase
    primary_key = "C000".downcase

    eval("class " + modelname + " < Mesonic ; end")

    @task = "rails generate hobo:resource "+ modelname + " "

    eval(modelname).columns.each do |column|
      @task += column.name.to_s + ":" + column.type.to_s + " "
    end

    puts @task
    puts system(@task)

    filename = "app/models/" + modelname.underscore + ".rb"
    File.rename(filename, filename + '.old')
    oldfile = File.open(filename + '.old', 'r')
    newfile = File.open(filename, 'w')

    oldfile.readlines.each do |line|
      if line.include?("# Don't put anything above this")
        newfile.write "  establish_connection :mesonic_cwldaten_development\n"
        newfile.write "  self.table_name = \"#{tablename}\"\n\n"
        newfile.write "  self.primary_key = \"#{primary_key}\"\n\n"
      end

      # getting rid of binary ts columns
      next if line.include?(":binary")
      line.sub!(", :ts","")

      newfile.write line
    end
    oldfile.delete
  end

  # starten als: 'bundle exec rake mesonic:tables
  # in Produktivumgebungen: 'bundle exec rake mesonic:tables RAILS_ENV=production'
  desc "Create Tables with Tablenames"
  task :tables => :environment do

    @file =  Roo::Excel.new("materials/T000.xls")
    @sheet = @file.sheets.first
    @sheet.rows.each do |row|
      if row(0).start_with?("000")

      end
    end
  end
end
