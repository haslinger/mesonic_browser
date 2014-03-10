class T268 < Mesonic

  self.table_name = "t268"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :string
    c003     :datetime
    c009     :float
    c010     :string
    c012     :float
    c013     :integer
    c021     :integer
    c022     :integer
    c032     :integer
    mesocomp :string
    mesoyear :integer
    c033     :integer
    c034     :string
    c035     :string
    c036     :string
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c009, :c010, :c012, :c013, :c021, :c022, :c032, :mesocomp, :mesoyear, :c033, :c034, :c035, :c036

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
