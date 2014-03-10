class T486 < Mesonic

  self.table_name = "t486"
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
    c016     :integer
    c017     :integer
    c018     :integer
    c019     :string
    c020     :string
    c021     :string
    c022     :string
    c023     :datetime
    c024     :integer
    c025     :integer
    c026     :integer
    c027     :integer
    c028     :string
    c029     :integer
    c030     :integer
    c031     :string
    c032     :integer
    c033     :float
    c034     :float
    c035     :float
    c036     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c037     :integer
    c038     :integer
    c039     :string
    c040     :string
    c041     :string
    c042     :string
    c043     :string
    c044     :string
    c045     :string
    c046     :integer
    c047     :string
    c048     :integer
    c049     :integer
    c050     :float
    c051     :integer
    c052     :float
    c053     :integer
    c054     :integer
    c055     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :c054, :c055

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
