class T148 < Mesonic

  self.table_name = "t148"
  self.primary_key = "c001"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :float
    c003     :float
    c004     :float
    c005     :float
    c006     :float
    c007     :float
    c008     :float
    c009     :integer
    c010     :integer
    c011     :integer
    c012     :integer
    c013     :integer
    c014     :integer
    c015     :integer
    c016     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :mesosafe, :mesocomp, :mesoyear, :mesoprim

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
