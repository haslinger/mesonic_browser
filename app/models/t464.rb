class T464 < Mesonic

  self.table_name = "t464"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c003     :string
    c004     :string
    c005     :string
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
    c022     :string
    c023     :string
    c024     :string
    c025     :string
    c026     :string
    c027     :string
    c028     :string
    c029     :string
    c030     :string
    c031     :string
    c032     :string
    c033     :string
    c034     :string
    c035     :string
    c036     :string
    c037     :string
    c038     :string
    c100     :string
    c101     :integer
    c102     :string
    c103     :integer
    c104     :integer
    c105     :integer
    c106     :datetime
    c107     :integer
    c108     :datetime
    c109     :integer
    c110     :datetime
    c111     :integer
    c112     :datetime
    c113     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c039     :string
    c040     :string
    c041     :string
    c042     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c100, :c101, :c102, :c103, :c104, :c105, :c106, :c107, :c108, :c109, :c110, :c111, :c112, :c113, :mesocomp, :mesoyear, :mesoprim, :c039, :c040, :c041, :c042

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
