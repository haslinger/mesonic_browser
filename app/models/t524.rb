class T524 < Mesonic

  self.table_name = "t524"
  self.primary_key = "c250"

  hobo_model # Don't put anything above this

  fields do
    c240     :float
    c241     :float
    c242     :float
    c243     :float
    c244     :float
    c245     :float
    c246     :float
    c247     :integer
    c248     :integer
    c249     :integer
    c250     :string
    c251     :integer
    c252     :integer
    c253     :string
    c254     :float
    c255     :float
    c256     :integer
    c260     :float
    c261     :float
    c262     :float
    c263     :float
    c264     :float
    c265     :float
    c266     :float
    c267     :float
    c268     :float
    c269     :float
    c270     :float
    c271     :float
    c272     :float
    c273     :float
    c274     :float
    c275     :float
    c276     :float
    c277     :float
    c278     :float
    c279     :float
    c280     :float
    c281     :float
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
    c295     :float
    c296     :float
    c297     :float
    c298     :float
    c299     :float
    c300     :float
    c301     :float
    c302     :float
    c303     :float
    c304     :float
    c305     :float
    c306     :float
    c307     :float
    c308     :float
    c309     :float
    c310     :float
    c311     :float
    c312     :float
    c313     :float
    c314     :float
    c315     :float
    c316     :float
    c317     :float
    c318     :float
    c319     :float
    c320     :float
    c321     :float
    c322     :float
    c323     :float
    c324     :float
    c325     :float
    c326     :float
    c327     :float
    c328     :float
    c329     :float
    c330     :float
    c331     :float
    c332     :float
    c333     :float
    c334     :string
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c335     :string
    c336     :float
    c337     :float
    c338     :float
    c339     :float
    timestamps
  end
  attr_accessible :c240, :c241, :c242, :c243, :c244, :c245, :c246, :c247, :c248, :c249, :c250, :c251, :c252, :c253, :c254, :c255, :c256, :c260, :c261, :c262, :c263, :c264, :c265, :c266, :c267, :c268, :c269, :c270, :c271, :c272, :c273, :c274, :c275, :c276, :c277, :c278, :c279, :c280, :c281, :c282, :c283, :c284, :c285, :c286, :c287, :c288, :c289, :c290, :c291, :c292, :c293, :c294, :c295, :c296, :c297, :c298, :c299, :c300, :c301, :c302, :c303, :c304, :c305, :c306, :c307, :c308, :c309, :c310, :c311, :c312, :c313, :c314, :c315, :c316, :c317, :c318, :c319, :c320, :c321, :c322, :c323, :c324, :c325, :c326, :c327, :c328, :c329, :c330, :c331, :c332, :c333, :c334, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c335, :c336, :c337, :c338, :c339

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
