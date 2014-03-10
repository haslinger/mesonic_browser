class T155 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t155"
  self.primary_key = "c002"

  hobo_model # Don't put anything above this

  fields do
    c002     :string
    c003     :string
    c004     :string
    c105     :datetime
    c139     :string
    c155     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c201     :string
    c202     :string
    c203     :string
    c204     :string
    c205     :string
    timestamps
  end
  attr_accessible :c002, :c003, :c004, :c105, :c139, :c155, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c201, :c202, :c203, :c204, :c205

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
