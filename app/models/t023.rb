class T023 < Mesonic

  self.table_name = "t023"
  self.primary_key = "c010"

  hobo_model # Don't put anything above this

  fields do
    c004     :string
    c005     :integer
    c006     :float
    c007     :float
    c010     :string
    c027     :float
    c028     :string
    c030     :integer
    c035     :integer
    c040     :integer
    c046     :float
    c047     :float
    c048     :float
    c049     :float
    c050     :float
    c051     :float
    c052     :float
    c053     :float
    c062     :integer
    c070     :string
    c124     :string
    c126     :string
    c127     :string
    c128     :string
    c133     :float
    c134     :float
    c146     :float
    c147     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c151     :string
    c164     :float
    c165     :string
    c166     :string
    c167     :string
    c168     :string
    c174     :string
    c175     :string
    timestamps
  end
  attr_accessible :c004, :c005, :c006, :c007, :c010, :c027, :c028, :c030, :c035, :c040, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :c062, :c070, :c124, :c126, :c127, :c128, :c133, :c134, :c146, :c147, :mesocomp, :mesoyear, :mesoprim, :c151, :c164, :c165, :c166, :c167, :c168, :c174, :c175

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
