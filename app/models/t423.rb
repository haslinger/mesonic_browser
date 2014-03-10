class T423 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t423"
  self.primary_key = "c131"

  hobo_model # Don't put anything above this

  fields do
    c040     :float
    c041     :float
    c042     :float
    c043     :float
    c044     :float
    c045     :float
    c046     :float
    c047     :float
    c048     :float
    c049     :float
    c050     :float
    c051     :float
    c052     :float
    c053     :float
    c054     :float
    c055     :float
    c056     :float
    c057     :float
    c058     :float
    c059     :float
    c060     :float
    c062     :float
    c131     :string
    c140     :string
    c141     :integer
    c142     :integer
    c214     :float
    c215     :float
    c216     :integer
    c217     :integer
    c218     :float
    c219     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c280     :float
    c281     :float
    c307     :float
    c308     :float
    c309     :float
    c310     :integer
    c311     :integer
    timestamps
  end
  attr_accessible :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c062, :c131, :c140, :c141, :c142, :c214, :c215, :c216, :c217, :c218, :c219, :mesocomp, :mesoyear, :mesoprim, :c280, :c281, :c307, :c308, :c309, :c310, :c311

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
