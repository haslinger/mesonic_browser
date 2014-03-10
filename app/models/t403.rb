class T403 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t403"
  self.primary_key = "c100"

  hobo_model # Don't put anything above this

  fields do
    c100     :string
    c101     :string
    c102     :string
    c103     :string
    c104     :string
    c105     :string
    c106     :string
    c107     :string
    c108     :string
    c109     :datetime
    c110     :datetime
    c111     :float
    c112     :string
    c113     :string
    c114     :float
    c115     :integer
    c116     :integer
    c117     :string
    c118     :string
    c119     :string
    c120     :string
    c121     :string
    c122     :string
    c123     :string
    c124     :string
    c125     :string
    c126     :datetime
    c127     :datetime
    c128     :datetime
    c129     :datetime
    c130     :string
    c131     :string
    c132     :string
    c133     :datetime
    c134     :string
    c135     :string
    c136     :datetime
    c137     :datetime
    c138     :datetime
    c139     :string
    c140     :string
    c141     :string
    c142     :datetime
    c143     :datetime
    c144     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c145     :string
    c146     :integer
    c147     :integer
    c148     :float
    c149     :string
    c150     :string
    c151     :string
    c152     :integer
    c153     :integer
    c154     :string
    c155     :integer
    c156     :string
    c157     :string
    timestamps
  end
  attr_accessible :c100, :c101, :c102, :c103, :c104, :c105, :c106, :c107, :c108, :c109, :c110, :c111, :c112, :c113, :c114, :c115, :c116, :c117, :c118, :c119, :c120, :c121, :c122, :c123, :c124, :c125, :c126, :c127, :c128, :c129, :c130, :c131, :c132, :c133, :c134, :c135, :c136, :c137, :c138, :c139, :c140, :c141, :c142, :c143, :c144, :mesocomp, :mesoyear, :mesoprim, :c145, :c146, :c147, :c148, :c149, :c150, :c151, :c152, :c153, :c154, :c155, :c156, :c157

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
