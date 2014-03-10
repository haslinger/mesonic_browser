class T553 < Mesonic

  self.table_name = "t553"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :integer
    c002     :string
    c003     :string
    c004     :integer
    c005     :datetime
    c006     :string
    c007     :datetime
    c008     :string
    c009     :integer
    c010     :string
    c011     :string
    c012     :integer
    c013     :datetime
    c014     :integer
    c015     :integer
    c016     :datetime
    c017     :datetime
    c018     :integer
    c019     :float
    c020     :integer
    c021     :string
    c022     :float
    c023     :integer
    c024     :float
    c025     :float
    c026     :float
    c027     :float
    c028     :float
    c029     :float
    c030     :integer
    c031     :string
    c032     :integer
    c033     :datetime
    c034     :integer
    c035     :datetime
    c036     :datetime
    c037     :float
    c038     :float
    c039     :float
    c040     :float
    c041     :float
    mesocomp :string
    mesoyear :integer
    c042     :integer
    c043     :integer
    c044     :datetime
    c045     :datetime
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :mesocomp, :mesoyear, :c042, :c043, :c044, :c045

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
