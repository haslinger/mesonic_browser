class T034 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t034"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :integer
    c001     :string
    c002     :string
    c003     :string
    c004     :string
    c005     :string
    c006     :string
    c007     :integer
    c008     :integer
    c009     :integer
    c010     :string
    c011     :string
    c012     :datetime
    c013     :float
    c014     :float
    c015     :integer
    c016     :string
    c017     :string
    c018     :string
    c019     :string
    c020     :string
    c021     :string
    c022     :string
    c023     :string
    c024     :string
    c025     :integer
    c026     :datetime
    c027     :datetime
    c028     :datetime
    c029     :string
    c030     :string
    c031     :string
    c032     :string
    c033     :string
    c034     :string
    c035     :string
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c036     :integer
    c037     :integer
    c038     :integer
    c039     :integer
    c040     :integer
    c041     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c036, :c037, :c038, :c039, :c040, :c041

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
