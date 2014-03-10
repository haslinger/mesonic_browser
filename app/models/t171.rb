class T171 < Mesonic

  self.table_name = "t171"
  self.primary_key = "c001"

  hobo_model # Don't put anything above this

  fields do
    c001     :integer
    c002     :string
    c004     :integer
    c005     :string
    c006     :datetime
    c007     :integer
    c008     :text
    c009     :string
    c010     :string
    c011     :string
    c012     :string
    c013     :integer
    c014     :integer
    c015     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c016     :integer
    timestamps
  end
  attr_accessible :c001, :c002, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :mesocomp, :mesoyear, :mesoprim, :c016

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
