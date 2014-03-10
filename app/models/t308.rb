class T308 < Mesonic

  self.table_name = "t308"
  self.primary_key = "c014"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :integer
    c005     :float
    c006     :float
    c007     :float
    c008     :float
    c009     :float
    c010     :float
    c011     :float
    c012     :float
    c013     :float
    c014     :string
    c015     :float
    c016     :float
    c017     :float
    c018     :float
    c019     :string
    c020     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :mesocomp, :mesoyear, :mesoprim

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
