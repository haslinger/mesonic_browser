class T026 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t026"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c003     :string
    c004     :string
    c005     :float
    c006     :float
    c007     :float
    c008     :float
    c009     :string
    c010     :integer
    c011     :string
    c012     :integer
    c013     :integer
    c014     :integer
    c015     :string
    c016     :float
    c018     :float
    c019     :float
    c020     :float
    c021     :float
    c022     :float
    c023     :float
    c024     :string
    c025     :datetime
    c026     :string
    c027     :integer
    c031     :float
    c032     :integer
    c033     :string
    c034     :float
    c035     :string
    c037     :string
    c038     :string
    c039     :string
    c040     :string
    c041     :string
    c042     :string
    c043     :text
    c044     :string
    c045     :string
    c046     :integer
    c047     :string
    c048     :integer
    c049     :string
    c050     :string
    c051     :string
    c052     :float
    c053     :string
    c054     :integer
    c055     :integer
    c056     :string
    c057     :string
    c058     :integer
    c059     :integer
    c060     :integer
    c061     :integer
    c062     :integer
    c063     :integer
    c064     :string
    c065     :string
    c066     :string
    c067     :string
    c068     :string
    c069     :string
    c070     :float
    c071     :float
    c072     :float
    c073     :integer
    c074     :integer
    c075     :integer
    c076     :string
    c077     :integer
    c078     :integer
    c079     :string
    c080     :string
    c081     :integer
    c082     :float
    c083     :float
    c084     :string
    c085     :integer
    c086     :float
    c087     :float
    c088     :float
    c089     :string
    c090     :string
    c091     :integer
    c092     :float
    c093     :string
    c094     :string
    c095     :string
    c096     :string
    c097     :string
    c098     :integer
    c099     :float
    c100     :float
    c101     :float
    c102     :string
    c103     :string
    c104     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c105     :datetime
    c106     :string
    c107     :float
    c108     :string
    c109     :integer
    c110     :string
    c111     :string
    c112     :float
    c113     :integer
    timestamps
  end
  attr_accessible :c000, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c031, :c032, :c033, :c034, :c035, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :c062, :c063, :c064, :c065, :c066, :c067, :c068, :c069, :c070, :c071, :c072, :c073, :c074, :c075, :c076, :c077, :c078, :c079, :c080, :c081, :c082, :c083, :c084, :c085, :c086, :c087, :c088, :c089, :c090, :c091, :c092, :c093, :c094, :c095, :c096, :c097, :c098, :c099, :c100, :c101, :c102, :c103, :c104, :mesocomp, :mesoyear, :mesoprim, :c105, :c106, :c107, :c108, :c109, :c110, :c111, :c112, :c113

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
