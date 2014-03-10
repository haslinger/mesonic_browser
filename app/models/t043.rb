class T043 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t043"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :integer
    c003     :string
    c004     :datetime
    c005     :datetime
    c006     :float
    c007     :float
    c008     :float
    c009     :float
    c010     :float
    c011     :integer
    c012     :integer
    c013     :float
    c014     :text
    c015     :string
    c016     :string
    c017     :string
    c018     :integer
    c019     :string
    c020     :float
    c021     :string
    c022     :string
    c023     :string
    c024     :string
    c025     :integer
    c026     :integer
    c027     :string
    c028     :float
    c029     :float
    c030     :integer
    c031     :float
    c032     :datetime
    c033     :integer
    c034     :float
    c035     :datetime
    c036     :datetime
    c037     :float
    c038     :float
    c039     :integer
    c040     :integer
    mesocomp :string
    mesoyear :integer
    c041     :float
    c042     :datetime
    c043     :float
    c044     :string
    c045     :string
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :mesocomp, :mesoyear, :c041, :c042, :c043, :c044, :c045

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
