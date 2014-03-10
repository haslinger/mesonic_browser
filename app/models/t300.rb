class T300 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t300"
  self.primary_key = "c009"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c004     :integer
    c005     :string
    c006     :string
    c008     :integer
    c009     :integer
    c010     :integer
    c011     :integer
    c012     :integer
    c013     :integer
    c014     :integer
    c015     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c016     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c004, :c005, :c006, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :mesocomp, :mesoyear, :mesoprim, :c016

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
