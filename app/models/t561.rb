class T561 < Mesonic

  self.table_name = "t561"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c001     :string
    c002     :integer
    c003     :datetime
    c004     :datetime
    c005     :integer
    c006     :datetime
    c007     :datetime
    c008     :integer
    c009     :integer
    c010     :string
    c011     :string
    c012     :integer
    c013     :integer
    c014     :integer
    c015     :string
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :mesocomp, :mesoyear

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
