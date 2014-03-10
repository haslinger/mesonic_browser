class T020 < Mesonic

  self.table_name = "t020"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c050     :string
    c053     :string
    c054     :float
    c055     :float
    c056     :datetime
    c057     :string
    c058     :integer
    c060     :string
    c061     :integer
    c062     :float
    c063     :string
    c064     :string
    c065     :float
    c066     :float
    c067     :text
    c068     :string
    c069     :string
    c070     :float
    c071     :float
    c072     :float
    c073     :string
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c050, :c053, :c054, :c055, :c056, :c057, :c058, :c060, :c061, :c062, :c063, :c064, :c065, :c066, :c067, :c068, :c069, :c070, :c071, :c072, :c073, :mesocomp, :mesoyear

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
