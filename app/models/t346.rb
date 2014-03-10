class T346 < Mesonic

  self.table_name = "t346"
  self.primary_key = "c002"

  hobo_model # Don't put anything above this

  fields do
    c002     :string
    c003     :string
    c004     :string
    c005     :float
    c006     :float
    c007     :integer
    c008     :integer
    c009     :integer
    c010     :integer
    c011     :integer
    c012     :integer
    c013     :integer
    c014     :integer
    c015     :integer
    c016     :integer
    c017     :integer
    c018     :float
    c019     :float
    c020     :float
    c021     :float
    c022     :float
    c023     :float
    c024     :float
    c025     :float
    c026     :float
    c027     :float
    c028     :datetime
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c029     :string
    c030     :string
    timestamps
  end
  attr_accessible :c002, :c003, :c004, :c005, :c006, :c007, :c008, :c009, :c010, :c011, :c012, :c013, :c014, :c015, :c016, :c017, :c018, :c019, :c020, :c021, :c022, :c023, :c024, :c025, :c026, :c027, :c028, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c029, :c030

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
