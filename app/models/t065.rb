class T065 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t065"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :integer
    c001     :integer
    c002     :integer
    c003     :string
    c004     :string
    c005     :integer
    c006     :string
    c007     :string
    c008     :datetime
    c009     :integer
    c010     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :mesocomp, :mesoyear, :mesoprim

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
