class T515 < Mesonic

  self.table_name = "t515"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :integer
    c003     :integer
    c004     :integer
    c005     :integer
    c006     :integer
    c007     :integer
    c008     :string
    c009     :string
    c010     :datetime
    c011     :datetime
    c012     :datetime
    c013     :integer
    c014     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c015     :string
    c016     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :mesocomp, :mesoyear, :mesoprim, :c015, :c016

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
