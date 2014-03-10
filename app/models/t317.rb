class T317 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t317"
  self.primary_key = "c002"

  hobo_model # Don't put anything above this

  fields do
    c000     :datetime
    c002     :string
    c003     :string
    c004     :float
    c005     :integer
    c007     :text
    c008     :float
    c009     :float
    c010     :integer
    c011     :integer
    c012     :datetime
    c013     :datetime
    c014     :integer
    c015     :string
    c016     :string
    c017     :string
    c018     :datetime
    c019     :datetime
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
    c030     :float
    c031     :float
    c032     :float
    c033     :float
    c034     :float
    c035     :string
    c036     :float
    c037     :text
    c038     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c039     :string
    c040     :string
    c041     :integer
    c042     :string
    timestamps
  end
  attr_accessible :c000, :c002, :c003, :c004, :c005, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c039, :c040, :c041, :c042

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
