class T504 < Mesonic

  self.table_name = "t504"
  self.primary_key = "c180"

  hobo_model # Don't put anything above this

  fields do
    c180     :string
    c181     :string
    c182     :string
    c183     :string
    c184     :string
    c185     :integer
    c186     :float
    c187     :integer
    c188     :float
    c189     :integer
    c190     :float
    c191     :integer
    c192     :float
    c193     :string
    c194     :string
    c195     :string
    c196     :string
    c197     :float
    c198     :float
    c199     :float
    c200     :float
    c201     :string
    c202     :string
    c203     :string
    c204     :string
    c205     :string
    c206     :integer
    c207     :string
    c208     :string
    c209     :string
    c210     :float
    c211     :float
    c212     :float
    c213     :string
    c214     :string
    c215     :float
    c216     :float
    c217     :float
    c218     :float
    c219     :string
    c220     :string
    c221     :float
    c222     :float
    c223     :float
    c224     :float
    c225     :string
    c226     :integer
    c227     :datetime
    c228     :datetime
    c229     :string
    c230     :string
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c275     :string
    c276     :float
    c277     :float
    c278     :float
    c279     :float
    timestamps
  end
  attr_accessible :c180, :c181, :c182, :c183, :c184, :c185, :c186, :c187, :c188, :c189, :c190, :c191, :c192, :c193, :c194, :c195, :c196, :c197, :c198, :c199, :c200, :c201, :c202, :c203, :c204, :c205, :c206, :c207, :c208, :c209, :c210, :c211, :c212, :c213, :c214, :c215, :c216, :c217, :c218, :c219, :c220, :c221, :c222, :c223, :c224, :c225, :c226, :c227, :c228, :c229, :c230, :mesocomp, :mesoyear, :mesoprim, :c275, :c276, :c277, :c278, :c279

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
