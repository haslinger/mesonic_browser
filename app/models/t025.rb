class T025 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t025"
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
    c016     :string
    c017     :string
    c018     :string
    c019     :string
    c020     :integer
    c021     :string
    c022     :string
    c023     :string
    c024     :string
    c025     :string
    c026     :string
    c027     :datetime
    c028     :datetime
    c029     :datetime
    c030     :string
    c031     :string
    c032     :datetime
    c033     :string
    c034     :string
    c035     :string
    c036     :integer
    c037     :integer
    c038     :float
    c039     :integer
    c040     :float
    c041     :integer
    c043     :string
    c044     :string
    c045     :string
    c047     :integer
    c048     :string
    c049     :float
    c050     :float
    c051     :integer
    c052     :string
    c053     :string
    c054     :string
    c055     :string
    c056     :float
    c057     :integer
    c058     :string
    c059     :datetime
    c060     :datetime
    c061     :text
    c063     :string
    c064     :string
    c065     :string
    c066     :string
    c067     :string
    c068     :string
    c069     :string
    c070     :string
    c071     :string
    c072     :string
    c073     :datetime
    c074     :integer
    c075     :integer
    c076     :integer
    c077     :integer
    c078     :integer
    c079     :string
    c080     :float
    c081     :string
    c082     :string
    c083     :string
    c084     :string
    c085     :string
    c086     :string
    c087     :string
    c088     :integer
    c089     :integer
    c090     :integer
    c091     :integer
    c092     :integer
    c093     :integer
    c094     :integer
    c095     :integer
    c096     :integer
    c097     :integer
    c098     :integer
    c099     :float
    c100     :float
    c101     :string
    c102     :float
    c103     :datetime
    c104     :integer
    c105     :integer
    c106     :float
    c107     :datetime
    c108     :datetime
    c109     :integer
    c110     :string
    c111     :integer
    c112     :string
    c113     :string
    c114     :float
    c115     :integer
    c116     :integer
    c117     :integer
    c118     :float
    c120     :float
    c121     :string
    c122     :string
    c123     :integer
    c124     :string
    c125     :string
    c126     :integer
    c127     :integer
    c128     :string
    c129     :string
    c130     :string
    c131     :string
    c132     :string
    c133     :string
    c134     :string
    c135     :string
    c136     :string
    c137     :integer
    c138     :string
    c139     :integer
    c140     :integer
    c141     :integer
    c142     :integer
    c143     :integer
    c144     :string
    c145     :string
    c146     :string
    c147     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c148     :string
    c149     :string
    c150     :string
    c151     :integer
    c152     :string
    c153     :integer
    c154     :float
    c155     :integer
    c156     :integer
    c157     :integer
    c158     :integer
    c159     :integer
    c160     :string
    c161     :string
    c162     :string
    c163     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c043, :c044, :c045, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :c063, :c064, :c065, :c066, :c067, :c068, :c069, :c070, :c071, :c072, :c073, :c074, :c075, :c076, :c077, :c078, :c079, :c080, :c081, :c082, :c083, :c084, :c085, :c086, :c087, :c088, :c089, :c090, :c091, :c092, :c093, :c094, :c095, :c096, :c097, :c098, :c099, :c100, :c101, :c102, :c103, :c104, :c105, :c106, :c107, :c108, :c109, :c110, :c111, :c112, :c113, :c114, :c115, :c116, :c117, :c118, :c120, :c121, :c122, :c123, :c124, :c125, :c126, :c127, :c128, :c129, :c130, :c131, :c132, :c133, :c134, :c135, :c136, :c137, :c138, :c139, :c140, :c141, :c142, :c143, :c144, :c145, :c146, :c147, :mesocomp, :mesoyear, :mesoprim, :c148, :c149, :c150, :c151, :c152, :c153, :c154, :c155, :c156, :c157, :c158, :c159, :c160, :c161, :c162, :c163

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
