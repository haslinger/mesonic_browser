class T589 < Mesonic

  self.table_name = "t589"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :integer
    c003     :float
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
    c014     :integer
    c015     :integer
    c016     :integer
    c017     :integer
    c018     :integer
    c019     :integer
    c020     :integer
    c021     :integer
    c022     :integer
    c023     :integer
    c024     :float
    c025     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c026     :float
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :mesocomp, :mesoyear, :mesoprim, :c026

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
