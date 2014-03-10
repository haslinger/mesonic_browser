class T309 < Mesonic

  self.table_name = "t309"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :integer
    c003     :text
    c004     :string
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c005     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c005

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
