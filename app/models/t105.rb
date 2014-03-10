class T105 < Mesonic

  self.table_name = "t105"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :integer
    c003     :string
    c004     :float
    c005     :float
    c006     :float
    c007     :float
    c008     :string
    c009     :integer
    c010     :datetime
    c011     :string
    c012     :integer
    mesocomp :string
    mesoyear :integer
    c013     :float
    c014     :float
    c015     :float
    c016     :integer
    c017     :float
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :mesocomp, :mesoyear, :c013, :c014, :c015, :c016, :c017

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
