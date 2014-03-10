class T328 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t328"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :string
    c003     :integer
    c004     :datetime
    c005     :integer
    c006     :integer
    c007     :string
    c008     :float
    c009     :float
    c010     :integer
    c011     :integer
    mesocomp :string
    mesoyear :integer
    c012     :datetime
    c013     :string
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :mesocomp, :mesoyear, :c012, :c013

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
