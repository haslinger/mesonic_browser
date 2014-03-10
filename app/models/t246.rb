class T246 < Mesonic

  self.table_name = "t246"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :string
    c003     :datetime
    c004     :string
    c005     :string
    c006     :string
    c007     :float
    c008     :integer
    c009     :float
    c010     :string
    c011     :integer
    c012     :float
    c013     :integer
    c014     :integer
    c015     :text
    c016     :string
    c017     :string
    c018     :string
    c019     :datetime
    c020     :integer
    c021     :integer
    c022     :integer
    c023     :integer
    c024     :float
    c025     :integer
    c026     :integer
    c027     :float
    c028     :string
    c029     :integer
    c030     :string
    c031     :integer
    c032     :integer
    c033     :integer
    c034     :integer
    c035     :float
    c036     :float
    c037     :string
    mesocomp :string
    mesoyear :integer
    c038     :integer
    c039     :integer
    c040     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :mesocomp, :mesoyear, :c038, :c039, :c040

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
