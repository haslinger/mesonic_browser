class Mesonic < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  def self.table_name
    self.name.downcase
  end
end