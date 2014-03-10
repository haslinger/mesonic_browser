class T014 < Mesonic

  self.table_name = "t014"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :string
    c003     :string
    c004     :float
    c005     :float
    c006     :string
    c007     :string
    c008     :string
    c009     :datetime
    c010     :integer
    c011     :integer
    c012     :integer
    c013     :integer
    c014     :float
    c015     :string
    c016     :string
    c017     :integer
    c018     :integer
    c019     :string
    c020     :string
    c021     :string
    c022     :string
    c023     :integer
    c024     :float
    c025     :integer
    c026     :string
    c027     :float
    c028     :float
    c029     :integer
    c030     :string
    c031     :integer
    c032     :string
    c033     :float
    c034     :float
    c035     :float
    c036     :float
    c037     :string
    c038     :string
    c039     :string
    c040     :string
    c041     :string
    c042     :integer
    c043     :integer
    c044     :float
    c045     :string
    mesocomp :string
    mesoyear :integer
    c046     :float
    c047     :integer
    c048     :datetime
    c049     :string
    c050     :string
    c051     :string
    c052     :string
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :mesocomp, :mesoyear, :c046, :c047, :c048, :c049, :c050, :c051, :c052

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
