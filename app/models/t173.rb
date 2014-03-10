class T173 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t173"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c001     :integer
    c002     :integer
    c003     :integer
    c004     :integer
    c005     :string
    c006     :string
    c007     :string
    c008     :integer
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :mesocomp, :mesoyear

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
