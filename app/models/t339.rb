class T339 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t339"
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
    c030     :float
    c031     :integer
    c032     :string
    c033     :integer
    c034     :string
    c035     :integer
    c036     :integer
    c037     :string
    c039     :integer
    c040     :string
    c042     :string
    c043     :float
    c044     :text
    c045     :integer
    c046     :datetime
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
    mesocomp :string
    mesoyear :integer
    c047     :string
    c048     :string
    c049     :datetime
    c101     :integer
    c102     :integer
    c103     :float
    c104     :string
    c105     :integer
    c106     :float
    c107     :string
    c108     :integer
    c109     :float
    c110     :string
    c111     :string
    c112     :string
    c113     :string
    c114     :string
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c013, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c039, :c040, :c042, :c043, :c044, :c045, :c046, :c080, :c081, :c082, :c083, :c084, :c085, :c086, :c087, :c088, :c089, :c090, :c091, :c092, :mesocomp, :mesoyear, :c047, :c048, :c049, :c101, :c102, :c103, :c104, :c105, :c106, :c107, :c108, :c109, :c110, :c111, :c112, :c113, :c114

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
