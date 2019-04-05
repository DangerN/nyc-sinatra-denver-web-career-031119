class CreateLandmarks < ActiveRecord::Migration
  # raise 'Write CreateLandmarks migration here'

  def change

    create_table :figures do |t|
      t.string :name
    end


    create_table :titles do |t|
      t.string :name
    end

    create_table :landmarks do |t|
      t.string :name
      t.references :figure
      t.integer :year_completed
    end



    create_table :figure_titles do |t|
      t.references :title
      t.references :figure
    end



  end
end
