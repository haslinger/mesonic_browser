class T123 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t123"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :string
    c003     :string
    c004     :text
    c005     :string
    c006     :float
    c007     :integer
    c008     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c009     :string
    c010     :float
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :mesocomp, :mesoyear, :mesoprim, :c009, :c010

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
