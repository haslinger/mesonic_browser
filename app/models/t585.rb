class T585 < Mesonic

  self.table_name = "t585"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :integer
    c003     :integer
    c004     :integer
    c005     :integer
    c006     :integer
    c007     :integer
    c008     :datetime
    c009     :datetime
    c010     :integer
    c011     :string
    c012     :string
    c013     :string
    c014     :integer
    c015     :integer
    c016     :integer
    c017     :float
    c018     :text
    c019     :string
    c020     :integer
    c021     :string
    c022     :string
    c023     :string
    c024     :string
    c025     :string
    c026     :string
    c027     :float
    c028     :integer
    c029     :float
    c030     :string
    c031     :string
    c032     :string
    c033     :string
    c034     :string
    c035     :string
    c036     :string
    c037     :float
    c038     :float
    c039     :float
    c040     :float
    c041     :string
    c042     :float
    c043     :float
    c044     :float
    c045     :datetime
    c046     :string
    c047     :string
    c048     :integer
    c049     :datetime
    c050     :integer
    c051     :integer
    c052     :integer
    c053     :string
    c054     :string
    c055     :string
    c056     :string
    c057     :string
    c058     :datetime
    c059     :datetime
    c060     :string
    c061     :float
    c062     :string
    c063     :integer
    c064     :string
    c065     :integer
    c066     :integer
    c067     :float
    c068     :string
    c069     :float
    c070     :integer
    c071     :integer
    c072     :integer
    c073     :integer
    c074     :float
    c075     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c076     :string
    c077     :string
    c078     :string
    c079     :string
    c080     :string
    c081     :string
    c082     :string
    c083     :string
    c084     :string
    c085     :string
    c086     :string
    c087     :string
    c088     :string
    c089     :float
    c090     :float
    c091     :float
    c092     :float
    c093     :string
    c094     :float
    c095     :integer
    c096     :string
    c097     :float
    c098     :float
    c099     :string
    c100     :string
    c101     :string
    c102     :string
    c103     :string
    c104     :string
    c105     :string
    c106     :string
    c107     :string
    c108     :float
    c109     :float
    c110     :float
    c111     :float
    c112     :string
    c113     :string
    c114     :string
    c115     :string
    c116     :integer
    c117     :string
    c118     :float
    c119     :float
    c120     :string
    c121     :string
    c122     :float
    c123     :string
    c124     :string
    c125     :string
    c126     :string
    c127     :string
    c128     :string
    c129     :string
    c130     :string
    c131     :string
    c132     :string
    c133     :string
    c134     :string
    c135     :float
    c136     :float
    c137     :float
    c138     :float
    c139     :float
    c140     :string
    c141     :string
    c142     :string
    c143     :string
    c144     :string
    c145     :string
    c146     :string
    c147     :string
    c148     :string
    c149     :string
    c150     :string
    c151     :string
    c152     :string
    c153     :string
    c154     :integer
    c155     :integer
    c156     :integer
    c157     :integer
    c158     :integer
    c159     :integer
    c160     :integer
    c161     :integer
    c162     :integer
    c163     :datetime
    c164     :datetime
    c165     :datetime
    c166     :datetime
    c167     :datetime
    c168     :datetime
    c169     :datetime
    c170     :datetime
    c171     :datetime
    c172     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :c062, :c063, :c064, :c065, :c066, :c067, :c068, :c069, :c070, :c071, :c072, :c073, :c074, :c075, :mesocomp, :mesoyear, :mesoprim, :c076, :c077, :c078, :c079, :c080, :c081, :c082, :c083, :c084, :c085, :c086, :c087, :c088, :c089, :c090, :c091, :c092, :c093, :c094, :c095, :c096, :c097, :c098, :c099, :c100, :c101, :c102, :c103, :c104, :c105, :c106, :c107, :c108, :c109, :c110, :c111, :c112, :c113, :c114, :c115, :c116, :c117, :c118, :c119, :c120, :c121, :c122, :c123, :c124, :c125, :c126, :c127, :c128, :c129, :c130, :c131, :c132, :c133, :c134, :c135, :c136, :c137, :c138, :c139, :c140, :c141, :c142, :c143, :c144, :c145, :c146, :c147, :c148, :c149, :c150, :c151, :c152, :c153, :c154, :c155, :c156, :c157, :c158, :c159, :c160, :c161, :c162, :c163, :c164, :c165, :c166, :c167, :c168, :c169, :c170, :c171, :c172

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
