class T001 < ActiveRecord::Base

  establish_connection :mesonic_cwldaten_development
  self.table_name = "t001"
  self.primary_key = "c001"

  hobo_model # Don't put anything above this

  fields do
    c000     :string
    c001     :string
    c002     :string
    c003     :string
    c004     :string
    c005     :string
    c006     :string
    c007     :integer
    c008     :integer
    c009     :integer
    c010     :integer
    c011     :string
    c012     :integer
    c013     :string
    c014     :string
    c015     :integer
    c016     :integer
    c017     :integer
    c018     :integer
    c019     :string
    c020     :string
    c021     :string
    c022     :string
    c023     :integer
    c024     :string
    c025     :string
    c026     :string
    c027     :string
    c028     :string
    c029     :string
    c030     :string
    c031     :string
    c032     :string
    c033     :string
    c034     :string
    c035     :string
    c036     :string
    c037     :integer
    c038     :datetime
    c039     :integer
    c040     :string
    c041     :datetime
    c042     :datetime
    c043     :integer
    c044     :integer
    c045     :integer
    c046     :integer
    c047     :string
    c048     :string
    c049     :integer
    c050     :integer
    c051     :float
    c052     :integer
    c053     :string
    c054     :datetime
    c055     :datetime
    c056     :datetime
    c057     :datetime
    c058     :string
    c059     :integer
    c060     :text
    c061     :string
    c062     :string
    c063     :float
    c064     :integer
    c065     :string
    c066     :integer
    c067     :string
    c068     :integer
    c069     :integer
    c070     :string
    c071     :datetime
    c072     :datetime
    c073     :string
    c074     :string
    c075     :integer
    c076     :integer
    c077     :integer
    c078     :integer
    c079     :string
    c080     :float
    c081     :float
    c082     :string
    c083     :string
    c084     :string
    c085     :integer
    c086     :integer
    c087     :datetime
    c088     :datetime
    c089     :datetime
    c090     :datetime
    c091     :datetime
    c092     :integer
    c093     :integer
    c094     :integer
    c095     :integer
    c096     :integer
    c097     :string
    c098     :integer
    c099     :float
    c100     :float
    c101     :string
    c102     :string
    c103     :string
    c104     :string
    c105     :string
    c106     :string
    c107     :string
    c108     :string
    c109     :string
    c110     :string
    c111     :float
    c112     :float
    c113     :float
    c114     :float
    c115     :float
    c116     :float
    c117     :float
    c118     :float
    c119     :float
    c120     :float
    c121     :integer
    c122     :integer
    c123     :string
    c124     :string
    c125     :string
    c126     :string
    c127     :string
    c128     :string
    c129     :string
    c130     :string
    c131     :string
    c132     :string
    c133     :string
    c134     :string
    c135     :string
    c136     :string
    c137     :integer
    c138     :integer
    c139     :integer
    c140     :integer
    c141     :integer
    c142     :integer
    c143     :integer
    c144     :integer
    c145     :integer
    c146     :integer
    c147     :integer
    c148     :integer
    c149     :integer
    c150     :integer
    c151     :integer
    c152     :integer
    c153     :integer
    c154     :integer
    c155     :integer
    c156     :integer
    c157     :integer
    c158     :integer
    c159     :integer
    c160     :integer
    c161     :integer
    c162     :integer
    c163     :string
    c164     :string
    c165     :string
    c166     :string
    c167     :string
    c168     :integer
    c169     :integer
    c170     :integer
    c171     :string
    c172     :string
    c173     :string
    c174     :string
    c175     :string
    c176     :string
    c177     :string
    c178     :string
    c179     :string
    c180     :string
    c181     :text
    c182     :string
    c183     :string
    c184     :string
    c185     :string
    c186     :string
    c187     :string
    c188     :string
    c189     :string
    c190     :string
    c191     :string
    c192     :string
    c193     :string
    c194     :string
    c195     :string
    c196     :string
    c197     :string
    c198     :string
    c199     :integer
    c231     :float
    c232     :string
    c233     :string
    c234     :string
    c235     :integer
    c236     :integer
    c237     :string
    c238     :string
    c239     :string
    c240     :string
    c241     :integer
    c242     :integer
    c243     :integer
    c244     :integer
    c245     :integer
    c246     :string
    c247     :string
    c248     :string
    c249     :string
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c250     :integer
    c251     :integer
    c252     :integer
    c253     :string
    c254     :integer
    c255     :string
    c256     :string
    c257     :string
    c258     :string
    c259     :string
    c260     :string
    c261     :string
    c262     :integer
    timestamps
  end
  attr_accessible :c000, :c001, :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :c029, :c030, :c031, :c032, :c033, :c034, :c035, :c036, :c037, :c038, :c039, :c040, :c041, :c042, :c043, :c044, :c045, :c046, :c047, :c048, :c049, :c050, :c051, :c052, :c053, :c054, :c055, :c056, :c057, :c058, :c059, :c060, :c061, :c062, :c063, :c064, :c065, :c066, :c067, :c068, :c069, :c070, :c071, :c072, :c073, :c074, :c075, :c076, :c077, :c078, :c079, :c080, :c081, :c082, :c083, :c084, :c085, :c086, :c087, :c088, :c089, :c090, :c091, :c092, :c093, :c094, :c095, :c096, :c097, :c098, :c099, :c100, :c101, :c102, :c103, :c104, :c105, :c106, :c107, :c108, :c109, :c110, :c111, :c112, :c113, :c114, :c115, :c116, :c117, :c118, :c119, :c120, :c121, :c122, :c123, :c124, :c125, :c126, :c127, :c128, :c129, :c130, :c131, :c132, :c133, :c134, :c135, :c136, :c137, :c138, :c139, :c140, :c141, :c142, :c143, :c144, :c145, :c146, :c147, :c148, :c149, :c150, :c151, :c152, :c153, :c154, :c155, :c156, :c157, :c158, :c159, :c160, :c161, :c162, :c163, :c164, :c165, :c166, :c167, :c168, :c169, :c170, :c171, :c172, :c173, :c174, :c175, :c176, :c177, :c178, :c179, :c180, :c181, :c182, :c183, :c184, :c185, :c186, :c187, :c188, :c189, :c190, :c191, :c192, :c193, :c194, :c195, :c196, :c197, :c198, :c199, :c231, :c232, :c233, :c234, :c235, :c236, :c237, :c238, :c239, :c240, :c241, :c242, :c243, :c244, :c245, :c246, :c247, :c248, :c249, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c250, :c251, :c252, :c253, :c254, :c255, :c256, :c257, :c258, :c259, :c260, :c261, :c262

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
