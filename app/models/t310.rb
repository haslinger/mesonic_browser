class T310 < Mesonic

  self.table_name = "t310"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :float
    c003     :integer
    c004     :integer
    c005     :string
    c006     :string
    c007     :string
    c008     :string
    c009     :string
    c010     :integer
    c011     :float
    c012     :float
    c013     :datetime
    c014     :datetime
    c015     :integer
    c016     :string
    c017     :integer
    c018     :float
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :mesocomp, :mesoyear

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
