# encoding: utf-8
require 'roo'

namespace :mesonic do
  # starten als: 'bundle exec rake mesonic:discovery
  # in Produktivumgebungen: 'bundle exec rake mesonic:discovery RAILS_ENV=production'
  desc "Creates dummy prices, inventories and activates products"
  task :discovery => :environment do

    tablename = "T002".downcase
    modelname = tablename.upcase
    primary_key = "C017".downcase

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
        newfile.write "  self.table_name = \"#{tablename}\"\n"
        newfile.write "  self.primary_key = \"#{primary_key}\"\n\n"
      end

      # getting rid of binary ts columns
      next if line.include?(":binary")
      line.sub!(", :ts","")

      newfile.write line
    end
    newfile.close
    oldfile.close
    File.delete(filename + '.old', 'r')
  end

  # starten als: 'bundle exec rake mesonic:tables
  # in Produktivumgebungen: 'bundle exec rake mesonic:tables RAILS_ENV=production'
  desc "Create Tables with Tablenames und Tablecolumns"
  task :persist => :environment do

    @file =  Roo::Excelx.new("materials/T000.xlsx")
    @sheet = @file.sheet(0)
    (2..@sheet.last_row).each do |index|
      puts index.to_s
      if @sheet.cell(index, 1).start_with?("000")
        if Mesonictable.create(c000: @sheet.cell(index, 1),
                               c002: @sheet.cell(index, 2),
                               c003: @sheet.cell(index, 3),
                               c050: @sheet.cell(index, 4),
                               c051: @sheet.cell(index, 5),
                               c052: @sheet.cell(index, 6),
                               c053: @sheet.cell(index, 7),
                               c054: @sheet.cell(index, 8),
                               c055: @sheet.cell(index, 9),
                               c056: @sheet.cell(index, 10),
                               c057: @sheet.cell(index, 11),
                               c058: @sheet.cell(index, 12),
                               c059: @sheet.cell(index, 13))
          puts @sheet.cell(index, 1).to_s + " saved"
        else
          debugger
        end
      else
        if Mesoniccolumn.create(c000: @sheet.cell(index, 1),
                                c002: @sheet.cell(index, 2),
                                c003: @sheet.cell(index, 3),
                                c050: @sheet.cell(index, 4),
                                c051: @sheet.cell(index, 5),
                                c052: @sheet.cell(index, 6),
                                c053: @sheet.cell(index, 7),
                                c054: @sheet.cell(index, 8),
                                c055: @sheet.cell(index, 9),
                                c056: @sheet.cell(index, 10),
                                c057: @sheet.cell(index, 11),
                                c058: @sheet.cell(index, 12),
                                c059: @sheet.cell(index, 13))
          puts @sheet.cell(index, 1).to_s + " saved"
        else
          debugger
        end
      end
    end
  end

  # starten als: 'bundle exec rake mesonic:model_translations
  # in Produktivumgebungen: 'bundle exec rake mesonic:model_translations RAILS_ENV=production'
  desc "Create Model Translations"
  task :model_translations => :environment do

    filename = "config/locales/app.de.yml"
    File.rename(filename, filename + '.old')
    oldfile = File.open(filename + '.old', 'r')
    newfile = File.open(filename, 'w')

    oldfile.readlines.each do |line|
      if line.include?("# models")
        Mesonictable.all.each do |table|
          newfile.write "      T#{"%03d" % ( table.c000 / 10 ).to_s}:\n"
          newfile.write "        one: #{table.c003} \n"
          newfile.write "        other: #{table.c003} \n"
        end
      end
      newfile.write line
    end
    newfile.close
    oldfile.close
    # File.delete(filename + '.old', 'r')
  end
end