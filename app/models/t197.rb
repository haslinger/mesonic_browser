class T197 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t197"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :integer
    c002     :string
    c003     :string
    mesocomp :string
    mesoyear :integer
    c004     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :mesocomp, :mesoyear, :c004

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
