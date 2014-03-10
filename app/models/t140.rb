class T140 < Mesonic

  self.table_name = "t140"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :string
    c002     :string
    c003     :string
    c004     :float
    c005     :integer
    c006     :integer
    c007     :integer
    c008     :integer
    c009     :integer
    mesocomp :string
    mesoyear :integer
    c010     :integer
    c011     :integer
    c012     :string
    c013     :string
    c014     :integer
    c015     :integer
    c016     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :mesocomp, :mesoyear, :c010, :c011, :c012, :c013, :c014, :c015, :c016

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
