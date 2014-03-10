class T273 < Mesonic

  self.table_name = "t273"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :integer
    c003     :integer
    c004     :string
    c005     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c006     :integer
    c007     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :mesocomp, :mesoyear, :mesoprim, :c006, :c007

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
