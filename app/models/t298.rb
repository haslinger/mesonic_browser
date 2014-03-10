class T298 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t298"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :integer
    c001     :text
    c002     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :mesocomp, :mesoyear, :mesoprim

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
