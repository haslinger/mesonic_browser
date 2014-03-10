class T060 < Mesonic

  self.table_name = "t060"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c003     :integer
    c004     :string
    c005     :string
    c006     :integer
    c007     :string
    c008     :datetime
    c009     :datetime
    c010     :datetime
    c011     :integer
    c012     :float
    c013     :integer
    c014     :float
    c015     :datetime
    c016     :string
    c017     :float
    c018     :float
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c019     :string
    c020     :integer
    c021     :string
    c022     :integer
    c023     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c019, :c020, :c021, :c022, :c023

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
