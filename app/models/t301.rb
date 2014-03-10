class T301 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t301"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c003     :integer
    c004     :integer
    c005     :integer
    c006     :string
    c007     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c008     :integer
    c009     :integer
    c010     :string
    c011     :string
    c012     :integer
    c013     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :mesocomp, :mesoyear, :mesoprim, :c008, :c009, :c010, :c011, :c012, :c013

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
