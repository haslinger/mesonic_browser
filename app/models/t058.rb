class T058 < Mesonic

  self.table_name = "t058"
  self.primary_key = "c104"

  hobo_model # Don't put anything above this

  fields do
    c005     :string
    c006     :integer
    c007     :string
    c008     :string
    c009     :integer
    c011     :string
    c012     :string
    c022     :string
    c057     :string
    c058     :float
    c059     :integer
    c061     :float
    c063     :integer
    c067     :integer
    c073     :string
    c085     :string
    c100     :integer
    c104     :string
    c114     :integer
    c115     :integer
    c117     :string
    c124     :integer
    c135     :integer
    c136     :integer
    c137     :integer
    c138     :string
    c144     :datetime
    c147     :string
    c151     :integer
    c152     :datetime
    c153     :float
    c160     :string
    c161     :string
    c162     :string
    c163     :integer
    c164     :integer
    c165     :string
    c170     :datetime
    c173     :string
    c174     :string
    c175     :string
    c176     :string
    c177     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    C185     :integer
    C186     :integer
    C189     :float
    C190     :float
    c192     :string
    c193     :string
    c194     :string
    c195     :string
    c196     :string
    c197     :string
    c198     :string
    c199     :string
    c234     :string
    c235     :string
    c236     :string
    c238     :string
    c239     :string
    c243     :string
    c244     :string
    c245     :string
    c246     :string
    timestamps
  end
  attr_accessible :c005, :c006, :c007, :c008, :c009, :c011, :c012, :c022, :c057, :c058, :c059, :c061, :c063, :c067, :c073, :c085, :c100, :c104, :c114, :c115, :c117, :c124, :c135, :c136, :c137, :c138, :c144, :c147, :c151, :c152, :c153, :c160, :c161, :c162, :c163, :c164, :c165, :c170, :c173, :c174, :c175, :c176, :c177, :mesocomp, :mesoyear, :mesoprim, :C185, :C186, :C189, :C190, :c192, :c193, :c194, :c195, :c196, :c197, :c198, :c199, :c234, :c235, :c236, :c238, :c239, :c243, :c244, :c245, :c246

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
