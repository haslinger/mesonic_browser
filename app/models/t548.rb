class T548 < Mesonic

  self.table_name = "t548"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c003     :string
    c004     :text
    c005     :string
    c006     :datetime
    c007     :datetime
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c008     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :mesocomp, :mesoyear, :mesoprim, :c008

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
