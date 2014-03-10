class T181 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t181"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c001     :integer
    c002     :integer
    c003     :integer
    c004     :integer
    c005     :integer
    c006     :integer
    c007     :integer
    c008     :integer
    c009     :integer
    c010     :integer
    c011     :integer
    c012     :integer
    c013     :string
    c014     :string
    c015     :string
    c016     :string
    c017     :string
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :mesocomp, :mesoyear

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
