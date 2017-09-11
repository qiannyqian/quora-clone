class CreateAnswers < ActiveRecord::Migration[4.2]
	def change
		create_table :answers do |t|
			t.integer :question_id
			t.string :answer

			t.timestamps
		end
	end
end
