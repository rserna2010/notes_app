get '/' do
  # Look in app/views/index.erb
  display_notes
  erb :index
end


post '/notes' do 
  new_note = Note.create({
    title:    params[:title],
    content:  params[:content]
    })

  redirect to '/'
end 

get '/notes/:id' do 
  @note  = Note.where(id: params[:id]).first

  erb :note_page
end

get '/notes/:id/edit' do
  @note  = Note.where(id: params[:id]).first

  erb :edit
end

put '/notes/:id' do 
  @note = Note.where(id: params[:id]).first
  @note.title = params[:title]
  @note.content = params[:content]
  @note.save!
  redirect to '/'
end

get '/notes/:id/delete' do 
  @note = Note.where(id: params[:id]).first

  erb :delete
end




delete '/notes/:id/delete' do 
  @note = Note.where(id: params[:id]).first
  @note.destroy

  redirect to '/'
end
