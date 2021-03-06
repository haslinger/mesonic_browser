class T574 < Mesonic

  self.table_name = "t574"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :integer
    c003     :integer
    c004     :float
    c005     :float
    c006     :integer
    c007     :integer
    c008     :integer
    c009     :integer
    c010     :integer
    c011     :integer
    c012     :float
    c013     :float
    c014     :float
    c015     :float
    c016     :integer
    c017     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c018     :float
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :mesocomp, :mesoyear, :mesoprim, :c018

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
