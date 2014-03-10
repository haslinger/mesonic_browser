class T054 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t054"
  self.primary_key = "c112"

  hobo_model # Don't put anything above this

  fields do
    c060     :float
    c062     :float
    c065     :integer
    c066     :integer
    c068     :float
    c070     :integer
    c071     :integer
    c072     :integer
    c077     :string
    c107     :integer
    c108     :integer
    c109     :integer
    c110     :integer
    c111     :integer
    c112     :string
    c113     :integer
    c118     :string
    c119     :string
    c120     :string
    c121     :integer
    c122     :string
    c130     :string
    c132     :integer
    c133     :integer
    c134     :integer
    c148     :integer
    c149     :integer
    c150     :integer
    c169     :string
    c171     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c183     :integer
    C184     :integer
    c187     :string
    c188     :string
    c191     :string
    timestamps
  end
  attr_accessible :c060, :c062, :c065, :c066, :c068, :c070, :c071, :c072, :c077, :c107, :c108, :c109, :c110, :c111, :c112, :c113, :c118, :c119, :c120, :c121, :c122, :c130, :c132, :c133, :c134, :c148, :c149, :c150, :c169, :c171, :mesocomp, :mesoyear, :mesoprim, :c183, :C184, :c187, :c188, :c191

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
