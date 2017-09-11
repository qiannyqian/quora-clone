class CreateAnswers < ActiveRecord::Migration[4.2]
	def change
		create_table :answers do |t|
			t.references :question
			t.references :user
			t.string :answer

			t.timestamps
		end
	end
end
