class T568 < Mesonic

  self.table_name = "t568"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :integer
    c003     :integer
    c004     :datetime
    c005     :float
    c006     :float
    c007     :float
    c008     :float
    c009     :float
    c010     :integer
    c011     :integer
    c012     :integer
    c013     :string
    c014     :string
    c015     :integer
    c016     :integer
    c017     :integer
    c018     :integer
    c019     :datetime
    c020     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :mesocomp, :mesoyear, :mesoprim

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
