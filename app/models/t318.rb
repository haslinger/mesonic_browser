class T318 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t318"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :integer
    c002     :string
    c003     :string
    c004     :datetime
    c005     :float
    c006     :integer
    c007     :string
    c008     :string
    c009     :string
    c010     :float
    c011     :string
    c012     :float
    mesocomp :string
    mesoyear :integer
    c013     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :mesocomp, :mesoyear, :c013

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
