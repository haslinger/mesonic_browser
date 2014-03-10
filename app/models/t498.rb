class T498 < Mesonic

  self.table_name = "t498"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :datetime
    c002     :integer
    c003     :integer
    c004     :string
    c005     :string
    c006     :string
    mesocomp :string
    mesoyear :integer
    c007     :string
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :mesocomp, :mesoyear, :c007

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
