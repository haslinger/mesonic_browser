class T522 < Mesonic

  self.table_name = "t522"
  self.primary_key = "c131"

  hobo_model # Don't put anything above this

  fields do
    c080     :integer
    c081     :float
    c082     :float
    c083     :string
    c084     :integer
    c085     :integer
    c086     :float
    c087     :float
    c088     :float
    c089     :float
    c090     :float
    c091     :float
    c092     :float
    c093     :float
    c094     :float
    c095     :float
    c096     :integer
    c097     :float
    c098     :integer
    c099     :integer
    c100     :integer
    c101     :integer
    c102     :integer
    c103     :string
    c104     :float
    c105     :float
    c106     :integer
    c107     :integer
    c108     :integer
    c109     :integer
    c110     :integer
    c111     :float
    c112     :float
    c113     :float
    c114     :float
    c115     :float
    c116     :float
    c117     :float
    c118     :string
    c119     :string
    c120     :float
    c121     :float
    c122     :float
    c123     :float
    c124     :string
    c125     :string
    c126     :float
    c127     :float
    c128     :float
    c129     :float
    c130     :float
    c131     :string
    c132     :integer
    c133     :string
    c134     :integer
    c135     :integer
    c136     :float
    c137     :float
    c138     :float
    c139     :float
    c140     :float
    c141     :float
    c142     :string
    c143     :float
    c144     :float
    c145     :float
    c146     :float
    c147     :float
    c148     :float
    c149     :float
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c080, :c081, :c082, :c083, :c084, :c085, :c086, :c087, :c088, :c089, :c090, :c091, :c092, :c093, :c094, :c095, :c096, :c097, :c098, :c099, :c100, :c101, :c102, :c103, :c104, :c105, :c106, :c107, :c108, :c109, :c110, :c111, :c112, :c113, :c114, :c115, :c116, :c117, :c118, :c119, :c120, :c121, :c122, :c123, :c124, :c125, :c126, :c127, :c128, :c129, :c130, :c131, :c132, :c133, :c134, :c135, :c136, :c137, :c138, :c139, :c140, :c141, :c142, :c143, :c144, :c145, :c146, :c147, :c148, :c149, :mesosafe, :mesocomp, :mesoyear, :mesoprim

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
