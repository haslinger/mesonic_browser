class T270 < Mesonic

  self.table_name = "t270"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :string
    c004     :integer
    c007     :float
    mesocomp :string
    mesoyear :integer
    c008     :string
    c009     :string
    c010     :string
    c011     :integer
    c012     :integer
    c013     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c004, :c007, :mesocomp, :mesoyear, :c008, :c009, :c010, :c011, :c012, :c013

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
