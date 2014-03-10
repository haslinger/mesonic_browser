class T494 < Mesonic

  self.table_name = "t494"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :integer
    c002     :datetime
    c003     :datetime
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :mesocomp, :mesoyear

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
