class T059 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t059"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c004     :integer
    c005     :float
    c006     :float
    c007     :float
    c008     :float
    c009     :string
    c010     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c011     :integer
    c012     :string
    c013     :float
    c014     :float
    c015     :float
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :mesocomp, :mesoyear, :mesoprim, :c011, :c012, :c013, :c014, :c015

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
