class T186 < Mesonic

  self.table_name = "t186"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :integer
    c002     :string
    c003     :integer
    c004     :integer
    c005     :integer
    mesocomp :string
    mesoyear :integer
    c006     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :mesocomp, :mesoyear, :c006

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
