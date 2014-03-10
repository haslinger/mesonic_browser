class T460 < Mesonic

  self.table_name = "t460"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
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
    c025     :string
    c026     :string
    c027     :string
    c028     :string
    c029     :string
    c030     :string
    c031     :string
    c032     :string
    c033     :string
    c034     :string
    c035     :string
    c036     :string
    c037     :string
    c038     :string
    c039     :string
    c040     :string
    c041     :string
    c042     :string
    c043     :string
    c044     :string
    c045     :string
    c046     :string
    c047     :string
    c048     :string
    c049     :string
    c050     :string
    c051     :string
    c052     :string
    c053     :string
    c054     :string
    c055     :string
    c056     :string
    c057     :string
    c058     :string
    c059     :string
    c060     :string
    c061     :string
    c062     :string
    c063     :string
    c064     :string
    c065     :string
    c066     :string
    c067     :string
    c068     :string
    c090     :string
    c091     :integer
    c092     :datetime
    c093     :integer
    c094     :string
    c095     :integer
    c096     :integer
    c097     :string
    c098     :integer
    c099     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c069     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :c062, :c063, :c064, :c065, :c066, :c067, :c068, :c090, :c091, :c092, :c093, :c094, :c095, :c096, :c097, :c098, :c099, :mesocomp, :mesoyear, :mesoprim, :c069

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
