class T072 < Mesonic

  self.table_name = "t072"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :integer
    c002     :string
    c003     :string
    c004     :integer
    c005     :float
    c006     :integer
    c007     :float
    c008     :integer
    c009     :float
    c010     :integer
    c011     :float
    c012     :integer
    c013     :float
    c014     :integer
    c015     :float
    c016     :integer
    c017     :float
    c018     :integer
    c019     :float
    c020     :integer
    c021     :float
    c022     :integer
    c023     :float
    c024     :integer
    c025     :float
    c026     :integer
    c027     :float
    c028     :string
    c029     :float
    c030     :float
    c031     :float
    c032     :float
    c033     :float
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :mesocomp, :mesoyear

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
