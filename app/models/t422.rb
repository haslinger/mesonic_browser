class T422 < Mesonic

  self.table_name = "t422"
  self.primary_key = "c130"

  hobo_model # Don't put anything above this

  fields do
    c020     :float
    c021     :float
    c022     :float
    c023     :float
    c025     :float
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
    c130     :string
    c137     :string
    c138     :integer
    c139     :integer
    c159     :float
    c160     :float
    c184     :float
    c185     :float
    c187     :float
    c254     :float
    c255     :float
    c256     :float
    c267     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c277     :float
    c278     :float
    c282     :float
    c283     :float
    c284     :float
    c285     :float
    c286     :float
    c287     :float
    c288     :float
    c289     :float
    c290     :float
    c291     :float
    c292     :float
    c293     :float
    c294     :float
    c325     :float
    c326     :float
    c327     :float
    c328     :float
    c329     :float
    c330     :float
    c331     :float
    c332     :float
    c333     :float
    timestamps
  end
  attr_accessible :c020, :c021, :c022, :c023, :c025, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c130, :c137, :c138, :c139, :c159, :c160, :c184, :c185, :c187, :c254, :c255, :c256, :c267, :mesocomp, :mesoyear, :mesoprim, :c277, :c278, :c282, :c283, :c284, :c285, :c286, :c287, :c288, :c289, :c290, :c291, :c292, :c293, :c294, :c325, :c326, :c327, :c328, :c329, :c330, :c331, :c332, :c333

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
