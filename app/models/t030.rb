class T030 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t030"
  self.primary_key = "c015"

  hobo_model # Don't put anything above this

  fields do
    c008     :float
    c009     :float
    c012     :float
    c013     :float
    c015     :string
    c021     :datetime
    c022     :datetime
    c024     :float
    c026     :float
    c031     :float
    c033     :float
    c042     :float
    c044     :float
    c102     :float
    c118     :float
    c119     :float
    c120     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c162     :float
    c163     :float
    c170     :datetime
    timestamps
  end
  attr_accessible :c008, :c009, :c012, :c013, :c015, :c021, :c022, :c024, :c026, :c031, :c033, :c042, :c044, :c102, :c118, :c119, :c120, :mesocomp, :mesoyear, :mesoprim, :c162, :c163, :c170

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
