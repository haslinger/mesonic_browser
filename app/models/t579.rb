class T579 < Mesonic

  self.table_name = "t579"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c003     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c004     :string
    c005     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :mesocomp, :mesoyear, :mesoprim, :c004, :c005

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
