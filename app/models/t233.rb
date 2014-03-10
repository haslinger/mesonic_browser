class T233 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t233"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c003     :string
    c004     :string
    c005     :string
    c006     :string
    c007     :integer
    c008     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c009     :datetime
    c010     :string
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
