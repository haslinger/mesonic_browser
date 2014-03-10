class T501 < Mesonic

  self.table_name = "t501"
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
    c016     :datetime
    c017     :datetime
    c018     :datetime
    c019     :string
    c020     :string
    c021     :string
    c022     :text
    c023     :text
    c024     :string
    c025     :string
    c026     :string
    c027     :string
    c028     :string
    c029     :datetime
    c030     :string
    c031     :string
    c032     :string
    c033     :string
    c034     :string
    c035     :integer
    c036     :string
    c037     :datetime
    c038     :datetime
    c039     :datetime
    c040     :string
    c041     :datetime
    c042     :string
    c043     :string
    c044     :string
    c045     :string
    c046     :string
    c047     :string
    c048     :integer
    c049     :float
    c050     :float
    c051     :float
    c052     :float
    c053     :float
    c054     :string
    c055     :string
    c056     :float
    c057     :float
    c058     :datetime
    c059     :string
    c060     :string
    c061     :integer
    c062     :float
    c063     :integer
    c064     :integer
    c065     :string
    c066     :string
    c067     :string
    c068     :string
    c069     :string
    c070     :float
    c071     :string
    c072     :string
    c073     :datetime
    c074     :float
    c075     :datetime
    c076     :string
    c077     :integer
    c078     :float
    c079     :float
    c262     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c263     :integer
    c264     :string
    c265     :string
    c266     :string
    c267     :string
    c268     :string
    c269     :string
    c270     :string
    c271     :string
    c272     :string
    c273     :string
    c274     :string
    c280     :float
    c284     :string
    c286     :datetime
    c291     :string
    c292     :string
    c317     :datetime
    c318     :string
    c327     :string
    c328     :float
    c329     :float
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :c062, :c063, :c064, :c065, :c066, :c067, :c068, :c069, :c070, :c071, :c072, :c073, :c074, :c075, :c076, :c077, :c078, :c079, :c262, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c263, :c264, :c265, :c266, :c267, :c268, :c269, :c270, :c271, :c272, :c273, :c274, :c280, :c284, :c286, :c291, :c292, :c317, :c318, :c327, :c328, :c329

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
