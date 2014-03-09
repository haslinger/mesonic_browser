class CreateMesonicTablesAndMesonicColumns < ActiveRecord::Migration
  def self.up
    create_table :mesonictables do |t|
      t.integer  :c000
      t.string   :c001
      t.string   :c002
      t.string   :c003
      t.integer  :c050
      t.integer  :c051
      t.integer  :c052
      t.integer  :c053
      t.integer  :c054
      t.integer  :c055
      t.integer  :c056
      t.integer  :c057
      t.integer  :c058
      t.integer  :c059
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :mesoniccolumns do |t|
      t.integer  :c000
      t.string   :c001
      t.string   :c002
      t.string   :c003
      t.integer  :c050
      t.integer  :c051
      t.integer  :c052
      t.integer  :c053
      t.integer  :c054
      t.integer  :c055
      t.integer  :c056
      t.integer  :c057
      t.integer  :c058
      t.integer  :c059
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :mesonictables
    drop_table :mesoniccolumns
  end
end
