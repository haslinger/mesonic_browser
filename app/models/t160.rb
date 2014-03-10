class T160 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t160"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :integer
    c001     :integer
    c002     :integer
    c003     :datetime
    c004     :datetime
    c005     :datetime
    c006     :float
    c007     :string
    c008     :string
    c009     :integer
    c010     :integer
    c011     :string
    c012     :string
    c013     :integer
    c014     :integer
    c015     :string
    c016     :integer
    c017     :integer
    c018     :integer
    c019     :float
    c020     :string
    c021     :string
    c022     :integer
    c023     :integer
    c024     :string
    c025     :integer
    c026     :integer
    c027     :integer
    c028     :string
    c029     :integer
    c030     :integer
    mesocomp :string
    mesoyear :integer
    c031     :float
    c032     :string
    c033     :string
    c034     :integer
    c035     :integer
    c036     :float
    c037     :integer
    c038     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :mesocomp, :mesoyear, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038

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
