class EarBnb < Sinatra::Base

  get '/property/:id/new_comment' do
    @property_id = params['id']
    erb :'properties/comments'
  end

  post '/property/:id/new_comment' do
    @comment = Comment.new(message: params[:message],
                              property_id: params[:property],
                              user_id: params[1])
    if @comment.save
      current_user.save
      redirect '/property/params[:property]'
    else
      flash.now[:errors] = @comment.errors.full_messages
      erb :'/property/params[:property]/new_comment'
    end

  end
end
