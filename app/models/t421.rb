class T421 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t421"
  self.primary_key = "c000"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :integer
    c003     :integer
    c004     :integer
    c005     :integer
    c006     :integer
    c007     :integer
    c008     :integer
    c009     :integer
    c010     :float
    c011     :datetime
    c012     :text
    c013     :integer
    c014     :integer
    c015     :integer
    c016     :integer
    c017     :float
    c018     :integer
    c019     :integer
    c087     :integer
    c088     :float
    c089     :integer
    c097     :integer
    c153     :string
    c154     :string
    c155     :string
    c156     :integer
    c157     :integer
    c161     :float
    c162     :float
    c163     :float
    c164     :integer
    c165     :integer
    c188     :integer
    c210     :datetime
    c211     :datetime
    c212     :integer
    c213     :integer
    c242     :string
    c253     :integer
    c257     :string
    c258     :integer
    c259     :string
    c260     :string
    c261     :string
    c262     :string
    c263     :string
    c264     :string
    c265     :string
    c266     :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c279     :float
    c312     :integer
    c313     :string
    c324     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c087, :c088, :c089, :c097, :c153, :c154, :c155, :c156, :c157, :c161, :c162, :c163, :c164, :c165, :c188, :c210, :c211, :c212, :c213, :c242, :c253, :c257, :c258, :c259, :c260, :c261, :c262, :c263, :c264, :c265, :c266, :mesocomp, :mesoyear, :mesoprim, :c279, :c312, :c313, :c324

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
