class T032 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t032"
  self.primary_key = "c006"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :integer
    c002     :string
    c003     :string
    c004     :string
    c005     :string
    c006     :integer
    c007     :integer
    c008     :float
    c009     :integer
    c010     :string
    c011     :string
    c012     :integer
    c013     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :mesosafe, :mesocomp, :mesoyear, :mesoprim

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
