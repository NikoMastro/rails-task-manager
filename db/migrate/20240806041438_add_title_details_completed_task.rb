class AddTitleDetailsCompletedTask < ActiveRecord::Migration[7.1]
  def change
    add_column :task, :title, :string
    add_column :task, :details, :text
    add_column :task, :completed, :boolean
  end
end
