class T226 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t226"
  self.primary_key = "c010"

  hobo_model # Don't put anything above this

  fields do
    c001     :string
    c002     :string
    c003     :string
    c004     :float
    c005     :integer
    c006     :integer
    c007     :float
    c008     :integer
    c009     :datetime
    c010     :integer
    c011     :text
    c012     :integer
    c013     :integer
    c014     :integer
    c015     :integer
    c016     :integer
    c017     :integer
    c018     :integer
    c019     :integer
    c020     :integer
    c021     :float
    c022     :integer
    c023     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    mesosafe :integer
    timestamps
  end
  attr_accessible :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :mesocomp, :mesoyear, :mesoprim, :mesosafe

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
