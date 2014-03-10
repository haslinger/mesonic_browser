class T547 < Mesonic

  self.table_name = "t547"
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
    c007     :datetime
    c008     :string
    c009     :string
    c010     :string
    c011     :datetime
    c012     :string
    c013     :string
    c014     :string
    c015     :string
    c016     :string
    c017     :string
    c018     :string
    c019     :string
    c020     :datetime
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c021     :datetime
    c022     :datetime
    c023     :string
    c024     :string
    c025     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :mesocomp, :mesoyear, :mesoprim, :c021, :c022, :c023, :c024, :c025

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
