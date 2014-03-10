class T274 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t274"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :integer
    c003     :integer
    c004     :string
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
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c020     :integer
    c021     :integer
    c022     :integer
    c023     :integer
    mesosafe :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :mesocomp, :mesoyear, :mesoprim, :c020, :c021, :c022, :c023, :mesosafe

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
