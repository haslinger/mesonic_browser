class T010 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t010"
  self.primary_key = "c010"

  hobo_model # Don't put anything above this

  fields do
    c000     :float
    c001     :string
    c002     :string
    c003     :string
    c004     :string
    c006     :string
    c007     :string
    c008     :datetime
    c009     :string
    c010     :integer
    c011     :string
    c012     :string
    c013     :integer
    c014     :integer
    c015     :float
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c016     :integer
    c017     :string
    c018     :integer
    c019     :integer
    c020     :string
    c021     :integer
    c022     :integer
    c023     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023

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
