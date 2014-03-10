class T035 < Mesonic

  self.table_name = "t035"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :float
    c002     :float
    c003     :float
    c004     :float
    c005     :float
    c006     :float
    c007     :float
    c008     :integer
    c009     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c010     :float
    c011     :float
    c012     :float
    c013     :float
    c014     :float
    c015     :float
    c016     :float
    c017     :float
    c018     :float
    c019     :float
    c020     :float
    c021     :float
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021

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
