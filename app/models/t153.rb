class T153 < Mesonic

  self.table_name = "t153"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :datetime
    c003     :integer
    c004     :float
    c005     :float
    c006     :string
    mesocomp :string
    mesoyear :integer
    c007     :string
    c008     :string
    c009     :string
    c010     :string
    c011     :string
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :mesocomp, :mesoyear, :c007, :c008, :c009, :c010, :c011

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
