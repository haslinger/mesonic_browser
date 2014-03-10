class T052 < Mesonic

  self.table_name = "t052"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c005     :string
    c006     :integer
    c007     :integer
    c008     :integer
    c009     :integer
    c011     :string
    c012     :string
    c013     :float
    c014     :float
    c015     :float
    c016     :float
    c017     :float
    c022     :string
    c024     :float
    c025     :float
    c026     :float
    c027     :float
    c028     :float
    c029     :float
    c030     :float
    c031     :float
    c032     :float
    c033     :float
    c034     :float
    c035     :float
    c036     :float
    c037     :float
    c038     :float
    c039     :float
    c040     :float
    c041     :float
    c042     :float
    c043     :float
    c044     :float
    c045     :float
    c046     :float
    c047     :float
    c057     :string
    c058     :float
    c067     :integer
    c073     :string
    c085     :string
    c088     :float
    c089     :float
    c091     :float
    c092     :float
    c095     :float
    c096     :float
    c098     :float
    c099     :float
    c100     :integer
    c101     :integer
    c114     :integer
    c115     :integer
    c117     :string
    c124     :integer
    c129     :integer
    c131     :integer
    c142     :float
    c145     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c000, :c005, :c006, :c007, :c008, :c009, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c022, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c057, :c058, :c067, :c073, :c085, :c088, :c089, :c091, :c092, :c095, :c096, :c098, :c099, :c100, :c101, :c114, :c115, :c117, :c124, :c129, :c131, :c142, :c145, :mesocomp, :mesoyear, :mesoprim

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
