class T534 < Mesonic

  self.table_name = "t534"
  self.primary_key = "c450"

  hobo_model # Don't put anything above this

  fields do
    c450     :string
    c451     :string
    c452     :integer
    c453     :integer
    c454     :integer
    c455     :integer
    c456     :float
    c457     :float
    c458     :float
    c459     :float
    c460     :float
    c461     :float
    c462     :float
    c463     :float
    c464     :float
    c465     :float
    c466     :float
    c467     :float
    c468     :float
    c469     :float
    c470     :float
    c471     :float
    c472     :float
    c473     :float
    c474     :float
    c475     :float
    c476     :float
    c477     :float
    c478     :float
    c479     :float
    c480     :float
    c481     :float
    c482     :float
    c483     :float
    c484     :float
    c485     :float
    c486     :float
    c487     :float
    c488     :float
    c489     :float
    c490     :float
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c450, :c451, :c452, :c453, :c454, :c455, :c456, :c457, :c458, :c459, :c460, :c461, :c462, :c463, :c464, :c465, :c466, :c467, :c468, :c469, :c470, :c471, :c472, :c473, :c474, :c475, :c476, :c477, :c478, :c479, :c480, :c481, :c482, :c483, :c484, :c485, :c486, :c487, :c488, :c489, :c490, :mesosafe, :mesocomp, :mesoyear, :mesoprim

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
