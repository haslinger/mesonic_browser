class T125 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t125"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :string
    c003     :integer
    c004     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c005     :string
    c006     :string
    c007     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :mesocomp, :mesoyear, :mesoprim, :c005, :c006, :c007

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
