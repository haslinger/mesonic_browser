class T324 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t324"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    c000     :integer
    c001     :string
    c002     :string
    c003     :integer
    c004     :string
    c005     :float
    c006     :float
    c007     :float
    c008     :float
    c009     :float
    c010     :float
    c011     :string
    c012     :float
    c013     :float
    c014     :string
    c015     :integer
    c016     :datetime
    c017     :text
    c021     :integer
    c022     :integer
    c023     :string
    c024     :string
    c025     :float
    c026     :float
    c027     :float
    c028     :string
    c029     :string
    c030     :string
    c031     :string
    c032     :string
    c033     :string
    c034     :string
    c035     :string
    c036     :datetime
    c037     :string
    c038     :integer
    c039     :string
    c040     :float
    c041     :float
    c042     :integer
    c043     :string
    c044     :datetime
    c045     :datetime
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    c046     :integer
    c047     :integer
    c048     :string
    c049     :float
    c050     :float
    c051     :float
    c052     :float
    c053     :float
    c054     :string
    c055     :string
    c056     :float
    c057     :string
    c058     :integer
    c059     :integer
    c060     :integer
    c061     :integer
    mesokey  :integer
    c062     :float
    c063     :float
    c064     :float
    c065     :float
    c066     :string
    c067     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :mesosafe, :mesocomp, :mesoyear, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :mesokey, :c062, :c063, :c064, :c065, :c066, :c067

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
