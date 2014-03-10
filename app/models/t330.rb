class T330 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t330"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :integer
    c001     :string
    c002     :string
    c003     :integer
    c004     :integer
    c005     :string
    c006     :integer
    c007     :integer
    c008     :integer
    c009     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c010     :datetime
    c011     :integer
    c012     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :mesocomp, :mesoyear, :mesoprim, :c010, :c011, :c012

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
