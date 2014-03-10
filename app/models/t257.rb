class T257 < Mesonic

  self.table_name = "t257"
  self.primary_key = "c006"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :float
    c002     :string
    c004     :float
    c005     :float
    c006     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c004, :c005, :c006, :mesocomp, :mesoyear, :mesoprim

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
