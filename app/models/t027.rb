class T027 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t027"
  self.primary_key = "c002"

  hobo_model # Don't put anything above this

  fields do
    c002     :string
    c003     :string
    c011     :string
    c014     :integer
    c038     :datetime
    c068     :string
    c090     :string
    c091     :string
    c100     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c078     :string
    mesosafe :integer
    c079     :integer
    timestamps
  end
  attr_accessible :c002, :c003, :c011, :c014, :c038, :c068, :c090, :c091, :c100, :mesocomp, :mesoyear, :mesoprim, :c078, :mesosafe, :c079

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
