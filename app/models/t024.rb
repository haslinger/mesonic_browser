class T024 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t024"
  self.primary_key = "c002"

  hobo_model # Don't put anything above this

  fields do
    c002     :string
    c003     :string
    c011     :string
    c014     :integer
    c020     :integer
    c023     :integer
    c025     :integer
    c029     :integer
    c036     :string
    c038     :datetime
    c039     :integer
    c066     :integer
    c067     :integer
    c068     :string
    c069     :datetime
    c071     :datetime
    c072     :datetime
    c075     :string
    c077     :integer
    c078     :string
    c090     :string
    c091     :string
    c092     :string
    c093     :string
    c094     :integer
    c095     :integer
    c096     :string
    c097     :float
    c098     :float
    c099     :string
    c106     :string
    c109     :integer
    c110     :integer
    c111     :integer
    c112     :integer
    c113     :integer
    c114     :string
    c115     :string
    c116     :integer
    c117     :string
    c129     :string
    c131     :integer
    c132     :integer
    c137     :integer
    c138     :string
    c139     :integer
    c140     :integer
    c142     :integer
    c143     :string
    c144     :string
    c145     :string
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c150     :string
    c159     :integer
    c160     :integer
    c161     :datetime
    c169     :integer
    c172     :integer
    timestamps
  end
  attr_accessible :c002, :c003, :c011, :c014, :c020, :c023, :c025, :c029, :c036, :c038, :c039, :c066, :c067, :c068, :c069, :c071, :c072, :c075, :c077, :c078, :c090, :c091, :c092, :c093, :c094, :c095, :c096, :c097, :c098, :c099, :c106, :c109, :c110, :c111, :c112, :c113, :c114, :c115, :c116, :c117, :c129, :c131, :c132, :c137, :c138, :c139, :c140, :c142, :c143, :c144, :c145, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c150, :c159, :c160, :c161, :c169, :c172

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
