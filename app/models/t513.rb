class T513 < Mesonic

  self.table_name = "t513"
  self.primary_key = "c004"

  hobo_model # Don't put anything above this

  fields do
    c000     :integer
    c001     :string
    c002     :integer
    c003     :float
    c004     :string
    c005     :integer
    c006     :integer
    c007     :integer
    c008     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :mesocomp, :mesoyear, :mesoprim

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
