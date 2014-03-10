class T077 < Mesonic

  self.table_name = "t077"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :datetime
    c002     :integer
    c003     :string
    c004     :integer
    c005     :float
    c006     :float
    c007     :float
    c009     :string
    c010     :integer
    c011     :string
    c012     :string
    c013     :float
    c014     :float
    c015     :float
    c016     :float
    c017     :integer
    c018     :integer
    c019     :string
    c020     :string
    c021     :datetime
    c022     :string
    c023     :integer
    c024     :integer
    mesocomp :string
    mesoyear :integer
    c025     :string
    c026     :string
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :mesocomp, :mesoyear, :c025, :c026

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
