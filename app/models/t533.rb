class T533 < Mesonic

  self.table_name = "t533"
  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c003     :string
    c004     :string
    c005     :float
    c006     :datetime
    c007     :string
    c008     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c009     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c009

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
