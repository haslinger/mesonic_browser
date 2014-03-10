class T558 < Mesonic

  self.table_name = "t558"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :integer
    c002     :integer
    c003     :float
    c004     :float
    c005     :float
    c006     :float
    c007     :float
    c008     :float
    c009     :float
    c010     :float
    c011     :float
    mesocomp :string
    mesoyear :integer
    c012     :integer
    c013     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :mesocomp, :mesoyear, :c012, :c013

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
