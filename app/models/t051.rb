class T051 < Mesonic

  self.table_name = "t051"
  self.primary_key = "c001"

  hobo_model # Don't put anything above this

  fields do
    c001     :string
    c019     :string
    c020     :string
    c049     :string
    c050     :string
    c051     :string
    c052     :string
    c053     :string
    c074     :string
    c075     :string
    c076     :string
    c080     :string
    c082     :string
    c090     :string
    c097     :string
    c116     :string
    c123     :string
    c125     :string
    c126     :string
    c128     :string
    c140     :string
    c141     :string
    c157     :integer
    c168     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c178     :string
    c179     :string
    c180     :string
    c181     :string
    c182     :integer
    c231     :string
    c232     :string
    c233     :string
    c237     :string
    c240     :string
    C241     :integer
    c242     :string
    c247     :string
    c248     :string
    c249     :datetime
    c250     :datetime
    c251     :string
    c252     :string
    timestamps
  end
  attr_accessible :c001, :c019, :c020, :c049, :c050, :c051, :c052, :c053, :c074, :c075, :c076, :c080, :c082, :c090, :c097, :c116, :c123, :c125, :c126, :c128, :c140, :c141, :c157, :c168, :mesocomp, :mesoyear, :mesoprim, :c178, :c179, :c180, :c181, :c182, :c231, :c232, :c233, :c237, :c240, :C241, :c242, :c247, :c248, :c249, :c250, :c251, :c252

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
