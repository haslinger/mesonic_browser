class T266 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t266"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :string
    c003     :integer
    c004     :integer
    c005     :float
    c006     :string
    c007     :float
    c008     :float
    c009     :float
    c010     :float
    c011     :float
    c012     :string
    c013     :string
    c014     :float
    c015     :float
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :mesocomp, :mesoyear

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
