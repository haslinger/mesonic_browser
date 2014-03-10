class T376 < Mesonic

  self.table_name = "t376"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :string
    c003     :datetime
    c004     :string
    c005     :string
    c006     :string
    c007     :float
    c008     :integer
    c009     :float
    c010     :string
    c011     :integer
    c012     :float
    c013     :integer
    c014     :integer
    c015     :text
    c016     :string
    c017     :integer
    c018     :integer
    c019     :integer
    c020     :string
    c021     :integer
    c023     :integer
    c024     :float
    c026     :integer
    c028     :string
    c032     :integer
    mesocomp :string
    mesoyear :integer
    c037     :integer
    c038     :integer
    c039     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c023, :c024, :c026, :c028, :c032, :mesocomp, :mesoyear, :c037, :c038, :c039

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
