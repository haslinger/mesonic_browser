class T566 < Mesonic

  self.table_name = "t566"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :integer
    c003     :integer
    c004     :string
    c005     :string
    c006     :string
    c007     :integer
    c008     :integer
    c009     :integer
    c010     :string
    c011     :string
    c012     :integer
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
    c029     :integer
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
    c040     :float
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
    c061     :float
    c062     :float
    c063     :integer
    c064     :string
    c065     :float
    c066     :float
    c067     :float
    c068     :float
    c069     :float
    c070     :float
    c071     :float
    c072     :float
    c073     :float
    c074     :float
    c075     :float
    c076     :float
    c077     :float
    c078     :float
    c079     :float
    c080     :float
    c081     :float
    c082     :float
    c083     :float
    c084     :float
    c085     :float
    c086     :float
    c087     :float
    c088     :float
    c089     :string
    c090     :string
    c091     :string
    c092     :string
    c093     :string
    c094     :string
    c095     :string
    c096     :string
    c097     :string
    c098     :string
    c099     :integer
    c100     :datetime
    c101     :datetime
    c102     :datetime
    c103     :string
    c104     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c105     :string
    c106     :string
    c107     :float
    c108     :string
    c109     :float
    c110     :string
    c111     :float
    c112     :string
    c113     :float
    c114     :string
    c115     :float
    c116     :float
    c117     :string
    c118     :string
    c119     :float
    c120     :float
    c121     :float
    c122     :integer
    c123     :integer
    c124     :integer
    c125     :float
    c126     :integer
    c127     :float
    c128     :datetime
    c129     :float
    c130     :float
    c131     :float
    c132     :string
    c133     :float
    c134     :float
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :c062, :c063, :c064, :c065, :c066, :c067, :c068, :c069, :c070, :c071, :c072, :c073, :c074, :c075, :c076, :c077, :c078, :c079, :c080, :c081, :c082, :c083, :c084, :c085, :c086, :c087, :c088, :c089, :c090, :c091, :c092, :c093, :c094, :c095, :c096, :c097, :c098, :c099, :c100, :c101, :c102, :c103, :c104, :mesocomp, :mesoyear, :mesoprim, :c105, :c106, :c107, :c108, :c109, :c110, :c111, :c112, :c113, :c114, :c115, :c116, :c117, :c118, :c119, :c120, :c121, :c122, :c123, :c124, :c125, :c126, :c127, :c128, :c129, :c130, :c131, :c132, :c133, :c134

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
