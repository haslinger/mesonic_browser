class T373 < Mesonic

  self.table_name = "t373"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :integer
    c002     :float
    mesocomp :string
    mesoyear :integer
    c003     :integer
    c004     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :mesocomp, :mesoyear, :c003, :c004

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
