class T261 < Mesonic

  self.table_name = "t261"
  self.primary_key = "c004"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :integer
    c003     :float
    c004     :string
    c005     :text
    c006     :string
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :mesosafe, :mesocomp, :mesoyear, :mesoprim

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
