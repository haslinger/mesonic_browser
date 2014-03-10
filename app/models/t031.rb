class T031 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t031"
  self.primary_key = "c016"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c016     :string
    c037     :string
    c063     :float
    c064     :float
    c073     :string
    c074     :string
    c076     :string
    c080     :text
    c081     :text
    c082     :text
    c083     :text
    c084     :text
    c085     :text
    c086     :text
    c087     :text
    c088     :text
    c089     :text
    c122     :integer
    c148     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c155     :string
    timestamps
  end
  attr_accessible :c000, :c001, :c016, :c037, :c063, :c064, :c073, :c074, :c076, :c080, :c081, :c082, :c083, :c084, :c085, :c086, :c087, :c088, :c089, :c122, :c148, :mesocomp, :mesoyear, :mesoprim, :c155

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
