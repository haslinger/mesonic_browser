class T093 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t093"
  self.primary_key = "c002"

  hobo_model # Don't put anything above this

  fields do
    c001     :string
    c002     :string
    c003     :string
    c005     :string
    c033     :string
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c061     :integer
    c062     :integer
    c063     :integer
    c064     :integer
    c065     :integer
    c066     :integer
    c067     :integer
    c068     :integer
    c069     :integer
    c070     :integer
    c044     :string
    c071     :text
    c045     :integer
    c004     :string
    c046     :string
    timestamps
  end
  attr_accessible :c001, :c002, :c003, :c005, :c033, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c061, :c062, :c063, :c064, :c065, :c066, :c067, :c068, :c069, :c070, :c044, :c071, :c045, :c004, :c046

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
