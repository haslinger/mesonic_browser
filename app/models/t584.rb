class T584 < Mesonic

  self.table_name = "t584"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c003     :float
    c004     :float
    c005     :float
    c006     :integer
    c007     :integer
    c008     :integer
    c009     :string
    c010     :string
    c011     :string
    c012     :integer
    c013     :integer
    c014     :float
    c015     :float
    c016     :float
    c017     :integer
    c018     :integer
    c019     :integer
    c020     :integer
    c021     :string
    c022     :float
    c023     :integer
    c024     :integer
    c025     :datetime
    c026     :string
    c027     :float
    c028     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c029     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :mesocomp, :mesoyear, :mesoprim, :c029

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
