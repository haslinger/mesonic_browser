class T582 < Mesonic

  self.table_name = "t582"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :integer
    c003     :string
    c004     :datetime
    c005     :datetime
    c006     :integer
    c007     :integer
    c008     :integer
    c009     :integer
    c010     :integer
    c011     :integer
    c012     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :mesocomp, :mesoyear, :mesoprim

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
