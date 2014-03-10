class T510 < Mesonic

  self.table_name = "t510"
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
    c018     :datetime
    c019     :datetime
    c020     :integer
    c021     :float
    c022     :string
    c023     :string
    c024     :string
    c025     :string
    c026     :string
    c027     :string
    c028     :string
    c029     :datetime
    c030     :datetime
    c031     :string
    c032     :integer
    c033     :datetime
    c034     :integer
    c035     :integer
    c036     :integer
    c037     :integer
    c038     :integer
    c039     :string
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c040     :string
    c041     :string
    c042     :float
    c043     :string
    c044     :integer
    c045     :integer
    c046     :string
    c047     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047

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
