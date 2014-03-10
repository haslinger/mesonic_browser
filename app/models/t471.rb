class T471 < Mesonic

  self.table_name = "t471"
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
    c069     :string
    c070     :string
    c071     :string
    c072     :string
    c073     :string
    c074     :string
    c075     :string
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
    c099     :string
    c100     :string
    c101     :string
    c102     :string
    c103     :string
    c104     :string
    c105     :string
    c106     :string
    c107     :string
    c108     :string
    c109     :string
    c110     :string
    c111     :string
    c112     :string
    c113     :string
    c114     :string
    c115     :string
    c116     :string
    c117     :string
    c118     :string
    c119     :string
    c120     :string
    c121     :string
    c122     :string
    c123     :string
    c124     :string
    c125     :string
    c126     :string
    c127     :string
    c200     :string
    c201     :integer
    c202     :string
    c203     :integer
    c204     :integer
    c205     :integer
    c206     :datetime
    c207     :integer
    c208     :datetime
    c209     :integer
    c210     :datetime
    c211     :integer
    c212     :datetime
    c213     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c128     :string
    c129     :string
    c130     :string
    c131     :string
    c132     :string
    c133     :string
    c134     :string
    c135     :string
    c136     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :c062, :c063, :c064, :c065, :c066, :c067, :c068, :c069, :c070, :c071, :c072, :c073, :c074, :c075, :c076, :c077, :c078, :c079, :c080, :c081, :c082, :c083, :c084, :c085, :c086, :c087, :c088, :c089, :c090, :c091, :c092, :c093, :c094, :c095, :c096, :c097, :c098, :c099, :c100, :c101, :c102, :c103, :c104, :c105, :c106, :c107, :c108, :c109, :c110, :c111, :c112, :c113, :c114, :c115, :c116, :c117, :c118, :c119, :c120, :c121, :c122, :c123, :c124, :c125, :c126, :c127, :c200, :c201, :c202, :c203, :c204, :c205, :c206, :c207, :c208, :c209, :c210, :c211, :c212, :c213, :mesocomp, :mesoyear, :mesoprim, :c128, :c129, :c130, :c131, :c132, :c133, :c134, :c135, :c136

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
