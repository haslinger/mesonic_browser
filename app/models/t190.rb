class T190 < Mesonic

  self.table_name = "t190"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :string
    c002     :integer
    c003     :string
    c004     :string
    c005     :integer
    c006     :integer
    c007     :string
    c008     :integer
    c009     :integer
    c010     :string
    c011     :string
    c012     :datetime
    c013     :string
    c014     :string
    c015     :string
    c016     :string
    c017     :integer
    c018     :integer
    c019     :integer
    c020     :integer
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :mesobin, :mesocomp, :mesoyear

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
