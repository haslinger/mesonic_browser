class T068 < Mesonic

  self.table_name = "t068"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c001     :string
    c002     :string
    c003     :integer
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c001, :c002, :c003, :mesocomp, :mesoyear

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
