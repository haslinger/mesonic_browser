class T122 < Mesonic

  self.table_name = "t122"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :float
    c003     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c004     :integer
    c005     :float
    c006     :integer
    c007     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c004, :c005, :c006, :c007

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
