class AllgBeschreibung < ActiveRecord::Base

  establish_connection({
    :adapter  => 'sqlserver',
    :host     => '10.0.0.212',
    :username => 'meso',
    :password => 'm+S=0',
    :database => 'CWLDATEN'
  })

  # password: meso
  # dataserver: 10.0.0.212\SQLEXPRESS
  # encoding: utf8
  # timeout: 5000

  self.table_name = 't004'

end