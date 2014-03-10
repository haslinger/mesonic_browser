class T040 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t040"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :string
    c002     :datetime
    c003     :string
    c004     :float
    c005     :integer
    c006     :float
    c007     :float
    c008     :string
    c009     :integer
    c010     :float
    c011     :string
    c012     :datetime
    c013     :datetime
    c014     :integer
    c015     :float
    c016     :float
    c017     :float
    c018     :float
    c019     :integer
    c020     :string
    c021     :float
    mesocomp :string
    mesoyear :integer
    c022     :string
    c023     :float
    c024     :float
    c025     :string
    c026     :integer
    c027     :integer
    c028     :float
    c029     :string
    c030     :string
    c031     :integer
    c032     :integer
    c033     :datetime
    c034     :integer
    c035     :integer
    c036     :integer
    c037     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :mesocomp, :mesoyear, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037

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
