class T033 < Mesonic

  self.table_name = "t033"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :integer
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
    c015     :float
    c016     :float
    c017     :integer
    c018     :integer
    c019     :float
    c020     :float
    c021     :integer
    c022     :integer
    c023     :integer
    c024     :string
    mesocomp :string
    mesoyear :integer
    c025     :string
    c026     :string
    c027     :string
    c028     :integer
    c029     :integer
    c030     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :mesocomp, :mesoyear, :c025, :c026, :c027, :c028, :c029, :c030

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
