class T580 < Mesonic

  self.table_name = "t580"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :integer
    c003     :integer
    c004     :float
    c005     :float
    c006     :float
    c007     :float
    c008     :float
    c009     :float
    c010     :float
    c011     :float
    c012     :float
    c013     :float
    c014     :float
    c015     :float
    c016     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c017     :float
    c018     :integer
    c019     :integer
    c020     :float
    c021     :integer
    c022     :integer
    c023     :float
    c024     :float
    c025     :float
    c026     :float
    c027     :float
    c028     :float
    c029     :float
    c030     :float
    c031     :float
    c032     :float
    c033     :float
    c034     :float
    c035     :float
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :mesocomp, :mesoyear, :mesoprim, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035

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
