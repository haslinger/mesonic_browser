class T425 < Mesonic

  self.table_name = "t425"
  self.primary_key = "c133"

  hobo_model # Don't put anything above this

  fields do
    c083     :float
    c085     :float
    c086     :float
    c090     :float
    c091     :float
    c092     :float
    c093     :float
    c094     :float
    c095     :float
    c096     :float
    c100     :float
    c101     :float
    c102     :float
    c103     :float
    c104     :float
    c105     :float
    c106     :float
    c110     :float
    c111     :float
    c112     :float
    c113     :float
    c114     :float
    c115     :float
    c116     :float
    c120     :float
    c121     :float
    c122     :float
    c123     :float
    c124     :float
    c125     :float
    c126     :float
    c133     :string
    c146     :string
    c147     :integer
    c148     :integer
    c186     :float
    c190     :float
    c191     :float
    c192     :float
    c193     :float
    c194     :float
    c195     :float
    c196     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c083, :c085, :c086, :c090, :c091, :c092, :c093, :c094, :c095, :c096, :c100, :c101, :c102, :c103, :c104, :c105, :c106, :c110, :c111, :c112, :c113, :c114, :c115, :c116, :c120, :c121, :c122, :c123, :c124, :c125, :c126, :c133, :c146, :c147, :c148, :c186, :c190, :c191, :c192, :c193, :c194, :c195, :c196, :mesocomp, :mesoyear, :mesoprim

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
