class T389 < Mesonic

  self.table_name = "t389"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :text
    c002     :string
    c003     :datetime
    c004     :datetime
    c005     :string
    c006     :datetime
    c007     :datetime
    c008     :string
    c009     :integer
    c010     :integer
    c011     :text
    c012     :text
    c013     :integer
    c014     :text
    c015     :string
    c016     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :mesocomp, :mesoyear, :mesoprim

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
