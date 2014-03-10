class T103 < Mesonic

  self.table_name = "t103"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :integer
    c001     :string
    c002     :integer
    c003     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c004     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :mesocomp, :mesoyear, :mesoprim, :c004

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
