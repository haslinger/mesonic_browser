class T480 < Mesonic

  self.table_name = "t480"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c001     :string
    c002     :string
    c003     :string
    c004     :string
    c005     :integer
    c006     :integer
    c007     :string
    c008     :integer
    c009     :datetime
    c010     :datetime
    c011     :string
    c012     :integer
    c013     :integer
    c014     :integer
    c015     :integer
    c016     :integer
    c017     :datetime
    c018     :integer
    c019     :datetime
    c020     :datetime
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :mesocomp, :mesoyear

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
