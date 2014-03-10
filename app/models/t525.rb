class T525 < Mesonic

  self.table_name = "t525"
  self.primary_key = "c341"

  hobo_model # Don't put anything above this

  fields do
    c341     :string
    c342     :string
    c343     :integer
    c344     :integer
    c345     :float
    c346     :float
    c347     :float
    c348     :float
    c349     :float
    c350     :float
    c351     :float
    c352     :float
    c353     :float
    c354     :float
    c355     :float
    c356     :float
    c357     :float
    c358     :float
    c359     :float
    c360     :float
    c361     :float
    c362     :float
    c363     :float
    c364     :float
    c365     :float
    c366     :float
    c367     :string
    c368     :string
    c369     :string
    c370     :string
    c371     :float
    c372     :float
    c373     :float
    c374     :float
    c375     :float
    c376     :float
    c377     :float
    c378     :float
    c379     :float
    c380     :float
    c381     :float
    c382     :float
    c383     :float
    c384     :float
    c385     :float
    c386     :float
    c387     :float
    c388     :float
    mesosafe :integer
    mesocomp :string
    mesoyear :integer
    mesoprim :string
    c389     :float
    c340     :integer
    c390     :float
    c391     :float
    c392     :float
    c393     :float
    c394     :float
    c395     :float
    c396     :float
    c397     :float
    c398     :float
    c399     :float
    c400     :string
    c401     :float
    c402     :float
    c403     :float
    c404     :float
    c405     :float
    c406     :float
    c407     :float
    c408     :float
    c409     :float
    c410     :float
    c411     :float
    c412     :float
    c413     :float
    c414     :float
    c415     :float
    c416     :float
    c417     :float
    c418     :string
    c419     :string
    c420     :float
    c421     :float
    c422     :float
    c423     :float
    c424     :float
    c425     :float
    c426     :float
    c427     :float
    c428     :float
    c429     :integer
    c430     :float
    c431     :float
    c432     :string
    c433     :string
    c434     :string
    c435     :string
    c436     :string
    c437     :string
    c438     :string
    c439     :string
    c440     :string
    c441     :float
    c442     :float
    c443     :float
    c444     :float
    c445     :string
    c446     :string
    c447     :string
    c448     :string
    c449     :integer
    c491     :string
    c492     :float
    c493     :float
    c494     :string
    c495     :string
    c496     :float
    c497     :string
    c498     :string
    c499     :string
    c500     :string
    c501     :string
    c502     :string
    c503     :string
    c504     :string
    c505     :string
    c506     :string
    c507     :string
    c508     :string
    c509     :float
    c510     :float
    c511     :float
    c512     :float
    c513     :float
    c514     :string
    c515     :string
    c516     :string
    c517     :string
    c518     :string
    c519     :string
    c520     :string
    c521     :string
    c522     :string
    c523     :string
    c524     :string
    c525     :string
    c526     :string
    c527     :string
    c528     :integer
    c529     :integer
    c530     :integer
    c531     :integer
    c532     :integer
    c533     :integer
    c534     :integer
    c535     :integer
    c536     :integer
    c537     :datetime
    c538     :datetime
    c539     :datetime
    c540     :datetime
    c541     :datetime
    c542     :datetime
    c543     :datetime
    c544     :datetime
    c545     :datetime
    c546     :integer
    timestamps
  end
  attr_accessible :c341, :c342, :c343, :c344, :c345, :c346, :c347, :c348, :c349, :c350, :c351, :c352, :c353, :c354, :c355, :c356, :c357, :c358, :c359, :c360, :c361, :c362, :c363, :c364, :c365, :c366, :c367, :c368, :c369, :c370, :c371, :c372, :c373, :c374, :c375, :c376, :c377, :c378, :c379, :c380, :c381, :c382, :c383, :c384, :c385, :c386, :c387, :c388, :mesosafe, :mesocomp, :mesoyear, :mesoprim, :c389, :c340, :c390, :c391, :c392, :c393, :c394, :c395, :c396, :c397, :c398, :c399, :c400, :c401, :c402, :c403, :c404, :c405, :c406, :c407, :c408, :c409, :c410, :c411, :c412, :c413, :c414, :c415, :c416, :c417, :c418, :c419, :c420, :c421, :c422, :c423, :c424, :c425, :c426, :c427, :c428, :c429, :c430, :c431, :c432, :c433, :c434, :c435, :c436, :c437, :c438, :c439, :c440, :c441, :c442, :c443, :c444, :c445, :c446, :c447, :c448, :c449, :c491, :c492, :c493, :c494, :c495, :c496, :c497, :c498, :c499, :c500, :c501, :c502, :c503, :c504, :c505, :c506, :c507, :c508, :c509, :c510, :c511, :c512, :c513, :c514, :c515, :c516, :c517, :c518, :c519, :c520, :c521, :c522, :c523, :c524, :c525, :c526, :c527, :c528, :c529, :c530, :c531, :c532, :c533, :c534, :c535, :c536, :c537, :c538, :c539, :c540, :c541, :c542, :c543, :c544, :c545, :c546

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
