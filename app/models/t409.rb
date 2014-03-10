class T409 < Mesonic

  self.table_name = "t409"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :integer
    c003     :integer
    c004     :integer
    c005     :string
    c006     :string
    c007     :datetime
    c008     :datetime
    c009     :integer
    c010     :datetime
    c011     :datetime
    c012     :datetime
    c013     :datetime
    c014     :datetime
    c015     :integer
    c016     :float
    c017     :float
    c018     :float
    c019     :integer
    c020     :float
    c021     :float
    c022     :datetime
    c023     :float
    c024     :float
    c025     :float
    c026     :datetime
    c027     :float
    c028     :float
    c029     :integer
    c030     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c031     :text
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :mesocomp, :mesoyear, :mesoprim, :c031

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
