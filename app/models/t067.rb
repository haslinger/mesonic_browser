class T067 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t067"
  self.primary_key = "c009"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c003     :datetime
    c004     :float
    c005     :string
    c006     :string
    c007     :integer
    c008     :string
    c009     :integer
    c010     :string
    c011     :string
    c012     :string
    c013     :string
    c014     :string
    c015     :string
    c016     :string
    c017     :integer
    c018     :integer
    c019     :string
    c020     :string
    c021     :string
    c022     :string
    c023     :string
    c024     :string
    c025     :string
    c026     :string
    c027     :string
    c028     :string
    c029     :string
    c030     :string
    c031     :string
    c032     :string
    c033     :string
    c034     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c035     :string
    c036     :string
    c037     :string
    c038     :datetime
    c039     :datetime
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :mesocomp, :mesoyear, :mesoprim, :c035, :c036, :c037, :c038, :c039

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
