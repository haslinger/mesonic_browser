class T211 < Mesonic

  self.table_name = "t211"
  self.primary_key = "c002"

  hobo_model # Don't put anything above this

  fields do
    c002     :string
    c003     :string
    c004     :datetime
    c005     :string
    c006     :string
    c007     :string
    c008     :string
    c009     :string
    c010     :string
    c011     :string
    c012     :string
    c013     :float
    c014     :float
    c015     :integer
    c016     :integer
    c017     :integer
    c018     :integer
    c019     :string
    c020     :string
    c021     :string
    c022     :string
    c024     :float
    c025     :string
    c026     :string
    c031     :string
    c032     :string
    c033     :string
    c034     :float
    c035     :string
    c036     :datetime
    c037     :datetime
    c038     :datetime
    c039     :datetime
    c040     :datetime
    c041     :integer
    c042     :integer
    c043     :integer
    c044     :integer
    c045     :integer
    c046     :string
    c047     :string
    c048     :string
    c049     :datetime
    c050     :datetime
    c051     :float
    c052     :string
    c053     :string
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c054     :float
    c055     :float
    c056     :float
    c057     :float
    c058     :string
    c059     :string
    c060     :string
    c061     :string
    c062     :string
    c063     :string
    timestamps
  end
  attr_accessible :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c024, :c025, :c026, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :c062, :c063

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
