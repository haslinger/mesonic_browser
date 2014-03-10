class T529 < Mesonic

  self.table_name = "t529"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :integer
    c003     :string
    c004     :string
    c005     :string
    c006     :string
    c007     :float
    c008     :string
    c009     :integer
    c010     :float
    c011     :datetime
    c012     :datetime
    c013     :datetime
    c014     :string
    c015     :datetime
    c016     :datetime
    c017     :datetime
    c018     :datetime
    c019     :datetime
    c020     :datetime
    c021     :datetime
    c022     :integer
    c023     :datetime
    c024     :string
    c025     :integer
    c026     :string
    c027     :datetime
    c028     :datetime
    c029     :integer
    c030     :integer
    c031     :integer
    c032     :string
    c033     :string
    c034     :integer
    c035     :string
    c036     :integer
    c037     :datetime
    c038     :datetime
    c039     :datetime
    c040     :float
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :mesosafe, :mesocomp, :mesoyear, :mesoprim

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
