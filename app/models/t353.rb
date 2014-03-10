class T353 < Mesonic

  self.table_name = "t353"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :integer
    c002     :integer
    c003     :string
    c004     :string
    mesocomp :string
    mesoyear :integer
    c005     :string
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :mesocomp, :mesoyear, :c005

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
