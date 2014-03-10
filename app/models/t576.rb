class T576 < Mesonic

  self.table_name = "t576"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :integer
    c003     :string
    c004     :string
    c005     :string
    c006     :string
    c007     :string
    c008     :string
    c009     :string
    c010     :string
    c011     :string
    c012     :string
    c013     :string
    c014     :string
    c015     :string
    c016     :string
    c017     :string
    c018     :string
    c019     :string
    c020     :string
    c021     :string
    c022     :string
    c023     :string
    c024     :string
    c025     :integer
    c026     :integer
    c027     :string
    c028     :integer
    c029     :integer
    c030     :string
    c031     :integer
    c032     :integer
    c033     :string
    c034     :integer
    c035     :integer
    c036     :string
    c037     :integer
    c038     :integer
    c039     :string
    c040     :string
    c041     :integer
    c042     :integer
    c043     :string
    c044     :integer
    c045     :integer
    c046     :string
    c047     :integer
    c048     :integer
    c049     :string
    c050     :string
    c051     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c052     :string
    c053     :string
    c054     :string
    c055     :integer
    c056     :integer
    c057     :string
    c058     :integer
    c059     :integer
    c060     :integer
    c061     :integer
    c062     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051, :mesocomp, :mesoyear, :mesoprim, :c052, :c053, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :c062

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
