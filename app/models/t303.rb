class T303 < Mesonic

  self.table_name = "t303"
  self.primary_key = "c002"

  hobo_model # Don't put anything above this

  fields do
    c002     :string
    c003     :float
    c004     :float
    c005     :float
    c006     :float
    c007     :float
    c008     :string
    c009     :string
    c010     :datetime
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :mesocomp, :mesoyear, :mesoprim

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
