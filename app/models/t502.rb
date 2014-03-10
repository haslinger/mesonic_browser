class T502 < Mesonic

  self.table_name = "t502"
  self.primary_key = "c080"

  hobo_model # Don't put anything above this

  fields do
    c080     :string
    c081     :string
    c082     :string
    c083     :string
    c084     :string
    c085     :string
    c086     :string
    c087     :string
    c088     :float
    c089     :float
    c090     :float
    c091     :float
    c092     :string
    c093     :string
    c094     :datetime
    c095     :datetime
    c096     :string
    c097     :string
    c098     :string
    c099     :string
    c100     :string
    c101     :float
    c102     :float
    c103     :float
    c104     :string
    c105     :string
    c106     :string
    c107     :string
    c108     :float
    c109     :string
    c110     :string
    c111     :string
    c112     :string
    c113     :string
    c114     :string
    c115     :string
    c116     :integer
    c117     :datetime
    c118     :integer
    c119     :string
    c120     :float
    c121     :float
    c122     :string
    c123     :float
    c124     :datetime
    c125     :datetime
    c126     :integer
    c127     :integer
    c128     :datetime
    c129     :float
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c285     :string
    c287     :string
    c288     :float
    c293     :string
    c294     :string
    c295     :string
    c296     :string
    c297     :string
    c298     :string
    c299     :string
    c300     :string
    c301     :float
    c302     :float
    c303     :float
    c304     :float
    c305     :string
    c306     :string
    c307     :string
    c308     :string
    c309     :integer
    c310     :string
    c313     :datetime
    c314     :string
    c315     :float
    c316     :string
    c319     :string
    c320     :string
    c321     :string
    c326     :integer
    timestamps
  end
  attr_accessible :c080, :c081, :c082, :c083, :c084, :c085, :c086, :c087, :c088, :c089, :c090, :c091, :c092, :c093, :c094, :c095, :c096, :c097, :c098, :c099, :c100, :c101, :c102, :c103, :c104, :c105, :c106, :c107, :c108, :c109, :c110, :c111, :c112, :c113, :c114, :c115, :c116, :c117, :c118, :c119, :c120, :c121, :c122, :c123, :c124, :c125, :c126, :c127, :c128, :c129, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c285, :c287, :c288, :c293, :c294, :c295, :c296, :c297, :c298, :c299, :c300, :c301, :c302, :c303, :c304, :c305, :c306, :c307, :c308, :c309, :c310, :c313, :c314, :c315, :c316, :c319, :c320, :c321, :c326

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
