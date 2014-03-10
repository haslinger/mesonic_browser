class T374 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t374"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :datetime
    c003     :float
    c004     :string
    c005     :integer
    c006     :integer
    c007     :integer
    c008     :integer
    c009     :datetime
    c010     :float
    c011     :float
    c012     :float
    c013     :integer
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :mesocomp, :mesoyear

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
