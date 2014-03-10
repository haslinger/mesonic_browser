class T037 < Mesonic

  self.table_name = "t037"
  self.primary_key = "c107"

  hobo_model # Don't put anything above this

  fields do
    c017     :float
    c018     :float
    c019     :float
    c032     :string
    c034     :float
    c054     :float
    c059     :float
    c060     :datetime
    c079     :integer
    c100     :string
    c101     :datetime
    c103     :string
    c104     :datetime
    c105     :string
    c107     :string
    c108     :float
    c121     :float
    c123     :string
    c125     :float
    c130     :string
    c135     :string
    c136     :string
    c141     :string
    c149     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c152     :string
    c153     :string
    c154     :integer
    c156     :string
    c157     :float
    c158     :float
    c171     :integer
    c173     :string
    c176     :datetime
    timestamps
  end
  attr_accessible :c017, :c018, :c019, :c032, :c034, :c054, :c059, :c060, :c079, :c100, :c101, :c103, :c104, :c105, :c107, :c108, :c121, :c123, :c125, :c130, :c135, :c136, :c141, :c149, :mesocomp, :mesoyear, :mesoprim, :c152, :c153, :c154, :c156, :c157, :c158, :c171, :c173, :c176

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
