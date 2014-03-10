class T321 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t321"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :integer
    c003     :text
    c004     :integer
    c005     :string
    c006     :string
    c007     :float
    c008     :float
    c009     :float
    c010     :integer
    c011     :integer
    c012     :integer
    c013     :integer
    c014     :integer
    c015     :integer
    c016     :integer
    c017     :integer
    c018     :integer
    c019     :integer
    c020     :float
    c021     :string
    c022     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    c023     :string
    c024     :float
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :mesosafe, :mesocomp, :mesoyear, :c023, :c024

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
