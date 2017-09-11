class CreateQuestions < ActiveRecord::Migration[4.2]
	def change
		create_table :questions do |t|
			t.references :user
			t.string :question

			t.timestamps
		end
	end
end
