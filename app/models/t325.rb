class T325 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t325"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c001     :string
    c002     :string
    c003     :integer
    c004     :string
    c005     :float
    c017     :text
    c021     :integer
    mesocomp :string
    mesoyear :integer
    c022     :string
    c059     :integer
    c044     :datetime
    c045     :datetime
    c011     :string
    timestamps
  end
  attr_accessible :mesokey, :c001, :c002, :c003, :c004, :c005, :c017, :c021, :mesocomp, :mesoyear, :c022, :c059, :c044, :c045, :c011

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
