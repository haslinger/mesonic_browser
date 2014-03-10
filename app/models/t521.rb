class T521 < Mesonic

  self.table_name = "t521"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :datetime
    c003     :datetime
    c004     :integer
    c005     :string
    c006     :integer
    c007     :integer
    c008     :string
    c009     :datetime
    c010     :datetime
    c011     :float
    c012     :float
    c013     :float
    c014     :float
    c015     :float
    c016     :float
    c017     :float
    c018     :float
    c019     :float
    c020     :float
    c021     :float
    c022     :float
    c023     :float
    c024     :float
    c025     :integer
    c026     :float
    c027     :float
    c028     :float
    c029     :float
    c030     :float
    c031     :float
    c032     :float
    c033     :float
    c034     :float
    c035     :float
    c036     :float
    c037     :float
    c038     :float
    c039     :float
    c040     :float
    c041     :float
    c042     :float
    c043     :float
    c044     :float
    c045     :float
    c046     :float
    c047     :float
    c048     :string
    c049     :float
    c050     :integer
    c051     :integer
    c052     :integer
    c053     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c054     :string
    c055     :string
    c056     :string
    c057     :string
    c058     :string
    c059     :string
    c060     :string
    c061     :float
    c062     :float
    c063     :float
    c064     :float
    c065     :float
    c066     :float
    c067     :float
    c068     :float
    c069     :float
    c070     :string
    c071     :string
    c072     :string
    c073     :string
    c074     :string
    c075     :string
    c076     :float
    c077     :float
    c078     :float
    c079     :float
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :c062, :c063, :c064, :c065, :c066, :c067, :c068, :c069, :c070, :c071, :c072, :c073, :c074, :c075, :c076, :c077, :c078, :c079

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
