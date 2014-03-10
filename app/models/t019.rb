class T019 < Mesonic

  self.table_name = "t019"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :integer
    c003     :string
    c004     :float
    c005     :float
    c006     :integer
    c007     :integer
    c008     :integer
    c009     :datetime
    c010     :datetime
    c011     :string
    c013     :integer
    c016     :integer
    c017     :float
    c018     :string
    c019     :integer
    c020     :integer
    c021     :float
    c022     :integer
    c023     :integer
    c024     :float
    c025     :integer
    c026     :integer
    c027     :float
    c028     :string
    c029     :text
    c030     :float
    c031     :integer
    c032     :string
    c033     :integer
    c034     :string
    c035     :string
    c037     :string
    c038     :integer
    c039     :integer
    c040     :string
    c041     :integer
    c042     :string
    c043     :float
    c044     :string
    c045     :float
    c046     :float
    c047     :float
    c048     :float
    c052     :integer
    c055     :integer
    c056     :datetime
    c080     :datetime
    c081     :float
    c082     :float
    c083     :float
    c084     :float
    c085     :float
    c086     :string
    c087     :string
    c088     :float
    c089     :float
    c090     :float
    c091     :integer
    c092     :string
    c093     :integer
    c101     :float
    c102     :float
    c103     :float
    c104     :float
    c105     :float
    mesocomp :string
    mesoyear :integer
    c057     :string
    c058     :string
    c059     :datetime
    c111     :integer
    c112     :integer
    c113     :float
    c114     :string
    c115     :integer
    c116     :float
    c117     :string
    c118     :integer
    c119     :float
    c120     :string
    c121     :string
    c122     :string
    c123     :string
    c124     :string
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c013, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c052, :c055, :c056, :c080, :c081, :c082, :c083, :c084, :c085, :c086, :c087, :c088, :c089, :c090, :c091, :c092, :c093, :c101, :c102, :c103, :c104, :c105, :mesocomp, :mesoyear, :c057, :c058, :c059, :c111, :c112, :c113, :c114, :c115, :c116, :c117, :c118, :c119, :c120, :c121, :c122, :c123, :c124

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
