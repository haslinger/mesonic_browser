class T470 < Mesonic

  self.table_name = "t470"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
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
    c015     :string
    c016     :string
    c017     :string
    c018     :string
    c019     :string
    c020     :string
    c021     :string
    c022     :string
    c023     :string
    c050     :string
    c051     :integer
    c052     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c050, :c051, :c052, :mesocomp, :mesoyear, :mesoprim

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
