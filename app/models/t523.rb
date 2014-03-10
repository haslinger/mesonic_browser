class T523 < Mesonic

  self.table_name = "t523"
  self.primary_key = "c223"

  hobo_model # Don't put anything above this

  fields do
    c150     :string
    c151     :string
    c152     :string
    c153     :string
    c154     :string
    c155     :string
    c156     :string
    c157     :string
    c158     :string
    c159     :string
    c160     :integer
    c161     :float
    c162     :float
    c163     :float
    c164     :float
    c165     :float
    c166     :float
    c167     :float
    c168     :float
    c169     :float
    c170     :float
    c171     :float
    c172     :float
    c173     :float
    c174     :integer
    c175     :float
    c176     :float
    c177     :float
    c178     :float
    c179     :float
    c180     :float
    c181     :float
    c182     :float
    c183     :float
    c184     :float
    c185     :float
    c186     :integer
    c187     :float
    c188     :float
    c189     :float
    c190     :float
    c191     :float
    c192     :float
    c193     :float
    c194     :float
    c195     :float
    c196     :float
    c197     :float
    c198     :integer
    c199     :float
    c200     :float
    c201     :float
    c202     :float
    c203     :float
    c204     :float
    c205     :float
    c206     :string
    c207     :string
    c208     :float
    c209     :float
    c210     :float
    c211     :string
    c212     :string
    c213     :float
    c214     :float
    c215     :float
    c216     :float
    c217     :float
    c218     :float
    c219     :float
    c220     :float
    c221     :float
    c222     :float
    c223     :string
    c224     :integer
    c225     :string
    c226     :integer
    c227     :float
    c228     :float
    c229     :float
    c230     :float
    c231     :float
    c232     :float
    c233     :float
    c234     :float
    c235     :float
    c236     :float
    c237     :float
    c238     :float
    c239     :float
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    timestamps
  end
  attr_accessible :c150, :c151, :c152, :c153, :c154, :c155, :c156, :c157, :c158, :c159, :c160, :c161, :c162, :c163, :c164, :c165, :c166, :c167, :c168, :c169, :c170, :c171, :c172, :c173, :c174, :c175, :c176, :c177, :c178, :c179, :c180, :c181, :c182, :c183, :c184, :c185, :c186, :c187, :c188, :c189, :c190, :c191, :c192, :c193, :c194, :c195, :c196, :c197, :c198, :c199, :c200, :c201, :c202, :c203, :c204, :c205, :c206, :c207, :c208, :c209, :c210, :c211, :c212, :c213, :c214, :c215, :c216, :c217, :c218, :c219, :c220, :c221, :c222, :c223, :c224, :c225, :c226, :c227, :c228, :c229, :c230, :c231, :c232, :c233, :c234, :c235, :c236, :c237, :c238, :c239, :mesosafe, :mesocomp, :mesoyear, :mesoprim

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
