class T426 < Mesonic

  self.table_name = "t426"
  self.primary_key = "c152"

  hobo_model # Don't put anything above this

  fields do
    c024     :float
    c026     :float
    c027     :float
    c061     :float
    c084     :float
    c149     :string
    c150     :integer
    c151     :integer
    c152     :string
    c158     :float
    c237     :float
    c238     :integer
    c239     :integer
    c240     :integer
    c241     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c305     :float
    c306     :float
    timestamps
  end
  attr_accessible :c024, :c026, :c027, :c061, :c084, :c149, :c150, :c151, :c152, :c158, :c237, :c238, :c239, :c240, :c241, :mesocomp, :mesoyear, :mesoprim, :c305, :c306

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
