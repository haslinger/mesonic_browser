class T290 < Mesonic

  self.table_name = "t290"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :datetime
    c001     :integer
    c002     :string
    c003     :string
    c004     :string
    c005     :string
    c006     :integer
    c007     :string
    c008     :datetime
    c009     :integer
    c010     :integer
    c011     :integer
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :mesocomp, :mesoyear

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
