class ChangeHeightFromStringToFlote < ActiveRecord::Migration[5.2]
  def change
    change_column :pet_histories, :heigth, "float USING heigth::double precision"
  end
end
