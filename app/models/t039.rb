class T039 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t039"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :integer
    c003     :float
    c004     :float
    c005     :float
    c006     :datetime
    c007     :string
    c008     :integer
    c009     :float
    c010     :float
    c011     :string
    c012     :float
    c013     :integer
    c014     :integer
    c015     :float
    c016     :string
    c017     :string
    c018     :string
    c019     :string
    c020     :integer
    c021     :string
    c022     :string
    c023     :string
    c024     :string
    c025     :datetime
    c026     :datetime
    c027     :datetime
    c028     :datetime
    c029     :datetime
    c030     :string
    c031     :integer
    c032     :integer
    c033     :integer
    c034     :integer
    c035     :integer
    c036     :string
    c037     :string
    c038     :string
    c039     :float
    c040     :float
    c041     :float
    c042     :float
    c043     :float
    c044     :float
    c045     :float
    c046     :float
    c047     :float
    c048     :string
    c049     :string
    c050     :string
    mesocomp :string
    mesoyear :integer
    c051     :string
    c052     :string
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :mesocomp, :mesoyear, :c051, :c052

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
