class T234 < Mesonic

  self.table_name = "t234"
  self.primary_key = "c002"

  hobo_model # Don't put anything above this

  fields do
    c002     :string
    c003     :string
    c004     :string
    c005     :string
    c006     :integer
    c007     :string
    c008     :string
    c009     :string
    c010     :string
    c011     :float
    c012     :integer
    c013     :float
    c014     :string
    c015     :string
    c021     :string
    c023     :string
    c025     :string
    c026     :string
    c027     :string
    c028     :string
    c029     :string
    c030     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c031     :string
    c032     :string
    c033     :string
    timestamps
  end
  attr_accessible :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c021, :c023, :c025, :c026, :c027, :c028, :c029, :c030, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c031, :c032, :c033

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
