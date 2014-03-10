class T170 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t170"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c001     :integer
    c002     :integer
    c003     :integer
    c004     :integer
    c005     :datetime
    c006     :datetime
    c007     :datetime
    c008     :datetime
    c009     :string
    c010     :integer
    c011     :string
    c012     :string
    c013     :integer
    c014     :string
    c015     :string
    c016     :string
    c017     :integer
    c018     :string
    c019     :text
    c020     :text
    c021     :integer
    c022     :integer
    c023     :integer
    c024     :integer
    c025     :float
    c026     :string
    c027     :integer
    c028     :datetime
    c029     :datetime
    c030     :integer
    c031     :string
    c032     :integer
    mesocomp :string
    mesoyear :integer
    c033     :string
    c034     :integer
    timestamps
  end
  attr_accessible :mesokey, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :mesocomp, :mesoyear, :c033, :c034

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
