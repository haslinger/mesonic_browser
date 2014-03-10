class T135 < Mesonic

  self.table_name = "t135"
  self.primary_key = "c002"

  hobo_model # Don't put anything above this

  fields do
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
    c012     :datetime
    c013     :float
    c014     :float
    c015     :integer
    c016     :integer
    c017     :integer
    c018     :integer
    c019     :integer
    c020     :integer
    c021     :float
    c022     :float
    c023     :float
    c024     :float
    c025     :float
    c026     :float
    c027     :float
    c028     :float
    c029     :float
    c030     :float
    c031     :float
    c032     :float
    c033     :float
    c034     :datetime
    c035     :datetime
    c036     :datetime
    c037     :datetime
    c038     :datetime
    c039     :string
    c040     :string
    c041     :string
    c042     :string
    c045     :float
    c046     :float
    c047     :datetime
    c048     :float
    c049     :float
    c050     :text
    c054     :datetime
    c055     :float
    c056     :float
    c057     :float
    c058     :float
    c059     :float
    c060     :float
    c061     :float
    c062     :float
    c063     :float
    c064     :string
    c065     :string
    c066     :string
    c067     :float
    c068     :string
    c069     :string
    c070     :float
    c071     :string
    c072     :float
    c073     :float
    c074     :float
    c075     :float
    c076     :string
    c077     :string
    c078     :string
    c079     :integer
    c080     :string
    c081     :string
    c082     :datetime
    c083     :string
    c084     :integer
    c085     :string
    c086     :string
    c087     :string
    c088     :integer
    c089     :integer
    c090     :float
    c091     :float
    c092     :float
    c093     :float
    c094     :float
    c095     :float
    c096     :float
    c097     :string
    c098     :float
    c099     :string
    c100     :string
    c101     :float
    c102     :float
    c103     :string
    c104     :float
    c105     :float
    c106     :float
    c107     :string
    c108     :string
    c109     :float
    c110     :string
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c111     :float
    c112     :float
    c113     :float
    c114     :float
    c115     :string
    c116     :string
    c117     :string
    c118     :string
    c119     :string
    c120     :string
    c121     :float
    c122     :float
    c123     :string
    c124     :string
    c125     :float
    c126     :float
    c127     :float
    timestamps
  end
  attr_accessible :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c045, :c046, :c047, :c048, :c049, :c050, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :c062, :c063, :c064, :c065, :c066, :c067, :c068, :c069, :c070, :c071, :c072, :c073, :c074, :c075, :c076, :c077, :c078, :c079, :c080, :c081, :c082, :c083, :c084, :c085, :c086, :c087, :c088, :c089, :c090, :c091, :c092, :c093, :c094, :c095, :c096, :c097, :c098, :c099, :c100, :c101, :c102, :c103, :c104, :c105, :c106, :c107, :c108, :c109, :c110, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c111, :c112, :c113, :c114, :c115, :c116, :c117, :c118, :c119, :c120, :c121, :c122, :c123, :c124, :c125, :c126, :c127

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
