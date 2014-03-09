class Mesoniccolumn < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    c000 :integer
    c001 :string
    c002 :string
    c003 :string
    c050 :integer
    c051 :integer
    c052 :integer
    c053 :integer
    c054 :integer
    c055 :integer
    c056 :integer
    c057 :integer
    c058 :integer
    c059 :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c050, :c051, :c052, :c053, :c054, :c055, :c056, :c057, :c058, :c059

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
