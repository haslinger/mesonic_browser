class T108 < Mesonic

  self.table_name = "t108"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :float
    c001     :float
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :mesosafe, :mesocomp, :mesoyear

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
