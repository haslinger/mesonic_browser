class T319 < Mesonic

  self.table_name = "t319"
  self.primary_key = "mesokey"

  hobo_model # Don't put anything above this

  fields do
    mesokey  :integer
    c000     :string
    c001     :string
    c002     :float
    c004     :text
    c005     :integer
    c006     :string
    c007     :string
    c008     :string
    c009     :string
    c010     :string
    c011     :string
    c012     :string
    c013     :string
    c014     :string
    c015     :string
    c016     :string
    c017     :string
    c018     :string
    c019     :string
    c020     :string
    c021     :string
    c022     :integer
    c023     :integer
    mesocomp :string
    mesoyear :integer
    c030     :float
    c031     :string
    c032     :string
    c033     :string
    c034     :datetime
    c035     :datetime
    c036     :integer
    c037     :integer
    timestamps
  end
  attr_accessible :mesokey, :c000, :c001, :c002, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :mesocomp, :mesoyear, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037

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
