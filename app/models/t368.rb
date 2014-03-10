class T368 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t368"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :string
    c003     :datetime
    c004     :string
    c005     :string
    c006     :string
    c007     :float
    c008     :integer
    c009     :float
    c010     :integer
    c011     :integer
    c012     :float
    c013     :integer
    c014     :integer
    c016     :string
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c016, :mesocomp, :mesoyear

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
