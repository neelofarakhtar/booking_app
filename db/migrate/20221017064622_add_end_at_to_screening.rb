class AddEndAtToScreening < ActiveRecord::Migration[7.0]
  def change
    add_column :screenings, :end_at, :time
  end
end
