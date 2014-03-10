class T485 < Mesonic

  self.table_name = "t485"
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
    c008     :integer
    c009     :integer
    c010     :float
    c011     :datetime
    c012     :text
    c013     :integer
    c014     :integer
    c015     :integer
    c016     :integer
    c017     :float
    c018     :integer
    c019     :integer
    c020     :integer
    c021     :integer
    c022     :integer
    c023     :integer
    c024     :integer
    c025     :float
    c026     :integer
    c027     :integer
    c028     :integer
    c029     :float
    c030     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c031     :float
    c032     :float
    c033     :integer
    c034     :float
    c035     :float
    c036     :float
    c037     :float
    c038     :float
    c039     :float
    c040     :float
    c041     :float
    c042     :float
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :mesocomp, :mesoyear, :mesoprim, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042

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
