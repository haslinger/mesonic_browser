class T410 < Mesonic

  self.table_name = "t410"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c003     :string
    c004     :string
    c005     :integer
    c006     :integer
    c007     :string
    c008     :integer
    c009     :string
    c010     :integer
    c011     :integer
    c012     :integer
    c013     :integer
    c014     :integer
    c015     :integer
    c016     :integer
    c017     :integer
    c018     :string
    c019     :integer
    c020     :integer
    c021     :integer
    c022     :integer
    c023     :integer
    c024     :datetime
    c025     :datetime
    c026     :string
    c027     :integer
    c028     :datetime
    c029     :integer
    c030     :integer
    c031     :integer
    c032     :string
    c033     :string
    c034     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :mesosafe, :mesocomp, :mesoyear, :mesoprim

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
