class CreatePuntajes < ActiveRecord::Migration
  def change
    create_table :puntajes do |t|
      t.serial :id
      t.intenger :nro_puntaje
      t.DateTime :created_at

      t.timestamps null: false
    end
  end
end
