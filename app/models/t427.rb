class T427 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t427"
  self.primary_key = "c183"

  hobo_model # Don't put anything above this

  fields do
    c166     :string
    c167     :integer
    c168     :integer
    c169     :string
    c170     :integer
    c171     :integer
    c172     :integer
    c173     :float
    c174     :integer
    c175     :integer
    c176     :float
    c177     :float
    c178     :float
    c179     :float
    c180     :float
    c181     :integer
    c182     :integer
    c183     :string
    c189     :float
    c200     :float
    c201     :float
    c202     :float
    c203     :float
    c204     :float
    c205     :float
    c206     :float
    c220     :float
    c221     :float
    c222     :float
    c223     :float
    c224     :float
    c225     :float
    c226     :float
    c230     :float
    c231     :float
    c232     :float
    c233     :float
    c234     :float
    c235     :float
    c236     :float
    c268     :float
    c270     :float
    c271     :float
    c272     :float
    c273     :float
    c274     :float
    c275     :float
    c276     :float
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c166, :c167, :c168, :c169, :c170, :c171, :c172, :c173, :c174, :c175, :c176, :c177, :c178, :c179, :c180, :c181, :c182, :c183, :c189, :c200, :c201, :c202, :c203, :c204, :c205, :c206, :c220, :c221, :c222, :c223, :c224, :c225, :c226, :c230, :c231, :c232, :c233, :c234, :c235, :c236, :c268, :c270, :c271, :c272, :c273, :c274, :c275, :c276, :mesocomp, :mesoyear, :mesoprim

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
