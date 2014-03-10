class T175 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t175"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c001     :string
    c002     :string
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c001, :c002, :mesocomp, :mesoyear

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
