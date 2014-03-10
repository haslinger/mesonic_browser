class T271 < Mesonic

  self.table_name = "t271"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :string
    c002     :string
    c003     :string
    c004     :integer
    c005     :float
    c006     :float
    c007     :float
    mesocomp :string
    mesoyear :integer
    c008     :integer
    c009     :integer
    c010     :string
    c011     :integer
    c012     :float
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :mesocomp, :mesoyear, :c008, :c009, :c010, :c011, :c012

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
