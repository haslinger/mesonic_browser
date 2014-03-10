class T055 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t055"
  self.primary_key = "c002"

  hobo_model # Don't put anything above this

  fields do
    c002     :string
    c003     :string
    c004     :string
    c069     :integer
    c083     :text
    c084     :string
    c086     :datetime
    c087     :datetime
    c102     :string
    c103     :string
    c105     :datetime
    c106     :string
    c127     :string
    c139     :string
    c143     :string
    c146     :integer
    c155     :integer
    c156     :integer
    c158     :string
    c159     :string
    c166     :datetime
    c167     :string
    c172     :integer
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    C253     :integer
    C254     :integer
    timestamps
  end
  attr_accessible :c002, :c003, :c004, :c069, :c083, :c084, :c086, :c087, :c102, :c103, :c105, :c106, :c127, :c139, :c143, :c146, :c155, :c156, :c158, :c159, :c166, :c167, :c172, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :C253, :C254

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
