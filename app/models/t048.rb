class T048 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t048"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :integer
    c001     :integer
    c002     :datetime
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c003     :string
    c004     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :mesocomp, :mesoyear, :mesoprim, :c003, :c004

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
