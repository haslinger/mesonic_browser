class T272 < Mesonic

  self.table_name = "t272"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :integer
    c003     :string
    c004     :string
    c005     :text
    c006     :integer
    c007     :datetime
    c008     :integer
    c009     :string
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c010     :integer
    c011     :integer
    c012     :integer
    c013     :integer
    c014     :integer
    c015     :integer
    c016     :integer
    c017     :integer
    c018     :integer
    c019     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019

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
