class AddUuid < ActiveRecord::Migration
  def up
    execute 'CREATE EXTENSION "uuid-ossp";'
  end

  def down
    execute 'DROP EXTENSION "uuid-ossp";'
  end
end
