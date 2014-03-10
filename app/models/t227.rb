class T227 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t227"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :float
    c002     :integer
    c003     :integer
    c005     :integer
    c006     :integer
    c007     :integer
    c008     :integer
    c009     :integer
    c010     :integer
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c005, :c006, :c007, :c008, :c009, :c010, :mesocomp, :mesoyear

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
