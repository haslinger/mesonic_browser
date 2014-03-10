class T028 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t028"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :float
    c003     :float
    c004     :datetime
    c005     :string
    c006     :string
    c007     :integer
    c008     :integer
    c009     :string
    c010     :string
    c011     :integer
    c012     :float
    c013     :integer
    c014     :float
    c015     :integer
    c016     :integer
    c017     :text
    c018     :integer
    c019     :string
    c020     :string
    c021     :string
    c022     :string
    c023     :string
    c024     :string
    c025     :string
    c026     :integer
    c027     :float
    c028     :float
    c029     :string
    c030     :datetime
    c031     :integer
    c032     :float
    c033     :string
    c034     :string
    c035     :integer
    c036     :string
    c037     :string
    c038     :string
    c039     :datetime
    c040     :integer
    c041     :string
    c042     :integer
    c043     :integer
    c044     :integer
    c046     :string
    c048     :string
    mesocomp :string
    mesoyear :integer
    c050     :integer
    c051     :string
    c052     :datetime
    c053     :string
    c056     :integer
    c057     :string
    c058     :string
    c061     :text
    c062     :string
    c064     :string
    c065     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c046, :c048, :mesocomp, :mesoyear, :c050, :c051, :c052, :c053, :c056, :c057, :c058, :c061, :c062, :c064, :c065

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
