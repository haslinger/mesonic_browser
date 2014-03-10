class T503 < Mesonic

  self.table_name = "t503"
  self.primary_key = "c130"

  hobo_model # Don't put anything above this

  fields do
    c130     :string
    c131     :string
    c132     :integer
    c133     :float
    c134     :string
    c135     :string
    c136     :float
    c137     :float
    c138     :integer
    c139     :integer
    c140     :string
    c141     :string
    c142     :string
    c143     :string
    c144     :datetime
    c145     :datetime
    c146     :integer
    c147     :float
    c148     :string
    c149     :string
    c150     :string
    c151     :string
    c152     :string
    c153     :datetime
    c154     :string
    c155     :float
    c156     :integer
    c157     :string
    c158     :string
    c159     :string
    c160     :float
    c161     :integer
    c162     :integer
    c163     :string
    c164     :string
    c165     :datetime
    c166     :string
    c167     :string
    c168     :integer
    c169     :string
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c170     :string
    c171     :string
    c172     :datetime
    c173     :string
    c174     :datetime
    c175     :float
    c176     :float
    c177     :string
    c178     :float
    c179     :float
    c281     :string
    c282     :integer
    c283     :float
    c289     :string
    c311     :string
    c312     :float
    c322     :integer
    c323     :datetime
    c324     :datetime
    c325     :float
    timestamps
  end
  attr_accessible :c130, :c131, :c132, :c133, :c134, :c135, :c136, :c137, :c138, :c139, :c140, :c141, :c142, :c143, :c144, :c145, :c146, :c147, :c148, :c149, :c150, :c151, :c152, :c153, :c154, :c155, :c156, :c157, :c158, :c159, :c160, :c161, :c162, :c163, :c164, :c165, :c166, :c167, :c168, :c169, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c170, :c171, :c172, :c173, :c174, :c175, :c176, :c177, :c178, :c179, :c281, :c282, :c283, :c289, :c311, :c312, :c322, :c323, :c324, :c325

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
