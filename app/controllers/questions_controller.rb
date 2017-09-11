get '/questions' do
  erb :'/questions/all'
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :'/questions/show'
end

post '/questions/ask' do
  new_q = Question.new(params[:question])

  if new_q.save
    session[:user_id] = new_q.user_id
    redirect '/questions'
  else
    redirect '/'
  end
end

post '/questions/answer' do
  # @question = Question.find(params[:id])

  new_answer = Answer.new(params[:answer])
  # new_answer.user_id = current_user.id

  if new_answer.save
    redirect "/questions/#{new_answer.question_id}"
  else
    redirect '/failure'
  end

end
