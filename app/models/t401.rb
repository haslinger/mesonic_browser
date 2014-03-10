class T401 < Mesonic

  self.table_name = "t401"
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
    c021     :text
    c022     :text
    c023     :datetime
    c024     :datetime
    c025     :datetime
    c026     :datetime
    c027     :datetime
    c028     :float
    c029     :float
    c030     :float
    c031     :integer
    c032     :string
    c033     :integer
    c034     :integer
    c035     :string
    c036     :string
    c037     :float
    c038     :integer
    c039     :integer
    c040     :float
    c041     :integer
    c042     :string
    c043     :integer
    c044     :float
    c045     :float
    c046     :string
    c047     :string
    c048     :integer
    c049     :integer
    c050     :integer
    c051     :integer
    c052     :integer
    c053     :integer
    c054     :string
    c055     :float
    c056     :float
    c057     :float
    c058     :float
    c059     :float
    c060     :string
    c061     :integer
    c062     :float
    c063     :string
    c064     :float
    c065     :integer
    c066     :integer
    c067     :integer
    c068     :integer
    c069     :string
    c070     :integer
    c071     :integer
    c072     :integer
    c073     :integer
    c074     :integer
    c075     :integer
    c076     :integer
    c077     :integer
    c078     :integer
    c079     :datetime
    c080     :string
    c081     :datetime
    c082     :datetime
    c083     :datetime
    c084     :string
    c085     :string
    c086     :datetime
    c087     :string
    c088     :integer
    c089     :integer
    c090     :integer
    c091     :string
    c092     :string
    c093     :string
    c094     :integer
    c095     :string
    c096     :integer
    c097     :datetime
    c098     :integer
    c099     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :c062, :c063, :c064, :c065, :c066, :c067, :c068, :c069, :c070, :c071, :c072, :c073, :c074, :c075, :c076, :c077, :c078, :c079, :c080, :c081, :c082, :c083, :c084, :c085, :c086, :c087, :c088, :c089, :c090, :c091, :c092, :c093, :c094, :c095, :c096, :c097, :c098, :c099, :mesosafe, :mesocomp, :mesoyear, :mesoprim

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
