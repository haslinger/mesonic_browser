class T002 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t002"
  self.primary_key = "c017"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :float
    c003     :float
    c004     :string
    c005     :string
    c006     :float
    c007     :float
    c008     :float
    c009     :float
    c010     :float
    c011     :float
    c012     :float
    c013     :float
    c014     :float
    c015     :float
    c016     :datetime
    c017     :integer
    c018     :float
    c019     :float
    c020     :integer
    c021     :datetime
    c022     :integer
    c023     :float
    c024     :float
    c025     :float
    c026     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :mesosafe, :mesocomp, :mesoyear, :mesoprim

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
