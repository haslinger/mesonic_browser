class T189 < Mesonic

  self.table_name = "t189"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :string
    mesocomp :string
    mesoyear :integer
    c002     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :mesobin, :mesocomp, :mesoyear, :c002

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
