class T332 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t332"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c003     :string
    c004     :text
    c005     :string
    c006     :string
    c007     :string
    c008     :string
    c009     :string
    c010     :string
    c011     :float
    c012     :float
    c013     :integer
    c014     :float
    c015     :integer
    c016     :float
    c017     :integer
    c018     :datetime
    c019     :float
    c020     :integer
    c021     :float
    c022     :integer
    c023     :float
    c024     :integer
    c025     :datetime
    c026     :datetime
    c027     :datetime
    c028     :datetime
    c029     :datetime
    c030     :datetime
    c031     :string
    c032     :float
    c033     :string
    c034     :datetime
    c035     :string
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c036     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c036

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
