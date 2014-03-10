class T083 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t083"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :datetime
    c003     :string
    c004     :float
    c005     :float
    c006     :float
    c007     :string
    c009     :integer
    c010     :string
    c011     :float
    c013     :string
    c014     :string
    c015     :float
    c016     :string
    c017     :string
    c018     :string
    c019     :string
    c020     :integer
    c021     :float
    c022     :float
    c023     :integer
    c024     :string
    c025     :integer
    c026     :string
    c027     :string
    c028     :string
    c029     :string
    c030     :integer
    c031     :integer
    c033     :float
    c034     :integer
    c035     :float
    c036     :string
    c037     :string
    c038     :string
    c039     :integer
    c040     :float
    c041     :integer
    c042     :string
    c043     :string
    mesocomp :string
    mesoyear :integer
    c044     :string
    c045     :string
    c046     :float
    c047     :string
    c048     :string
    c049     :string
    c050     :float
    c051     :float
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c009, :c010, :c011, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :mesocomp, :mesoyear, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051

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
