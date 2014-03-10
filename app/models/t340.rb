class T340 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t340"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c003     :string
    c004     :float
    c005     :float
    c006     :datetime
    c007     :string
    c008     :integer
    c010     :string
    c011     :integer
    c012     :float
    c013     :string
    c014     :string
    c015     :float
    c016     :float
    c018     :integer
    c019     :integer
    c020     :string
    c021     :float
    c022     :float
    c023     :float
    mesocomp :string
    mesoyear :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c003, :c004, :c005, :c006, :c007, :c008, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c018, :c019, :c020, :c021, :c022, :c023, :mesocomp, :mesoyear

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
