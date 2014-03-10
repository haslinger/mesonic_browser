class T363 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t363"
  self.primary_key = "c007"

  hobo_model # Don't put anything above this

  fields do
    c000     :integer
    c001     :datetime
    c002     :string
    c003     :float
    c004     :string
    c005     :float
    c006     :string
    c007     :integer
    c008     :string
    c009     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c010     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :mesocomp, :mesoyear, :mesoprim, :c010

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
