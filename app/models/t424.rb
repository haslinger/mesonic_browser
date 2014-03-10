class T424 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t424"
  self.primary_key = "c132"

  hobo_model # Don't put anything above this

  fields do
    c063     :float
    c064     :float
    c065     :float
    c066     :float
    c067     :float
    c068     :float
    c069     :float
    c070     :float
    c071     :float
    c072     :float
    c073     :float
    c074     :float
    c075     :float
    c076     :float
    c077     :float
    c078     :float
    c079     :float
    c080     :float
    c081     :float
    c082     :float
    c132     :string
    c143     :string
    c144     :integer
    c145     :integer
    c243     :float
    c244     :float
    c245     :float
    c246     :float
    c247     :float
    c248     :float
    c249     :float
    c250     :float
    c251     :float
    c252     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
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
    timestamps
  end
  attr_accessible :c063, :c064, :c065, :c066, :c067, :c068, :c069, :c070, :c071, :c072, :c073, :c074, :c075, :c076, :c077, :c078, :c079, :c080, :c081, :c082, :c132, :c143, :c144, :c145, :c243, :c244, :c245, :c246, :c247, :c248, :c249, :c250, :c251, :c252, :mesocomp, :mesoyear, :mesoprim, :c295, :c296, :c297, :c298, :c299, :c300, :c301, :c302, :c303, :c304, :c314, :c315, :c316, :c317, :c318, :c319, :c320, :c321, :c322, :c323

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
