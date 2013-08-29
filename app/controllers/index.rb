get '/' do
  # Look in app/views/index.erb
  @notes_list = Note.display_notes
  erb :index
end


post '/notes' do 
  new_note = Note.create({
    title:    params[:title],
    content:  params[:content]
    })

  redirect to '/'
end 

get '/notes/:title' do 
  @note  = Note.where(title: params[:title]).first

  erb :note_page
end

get '/notes/:title/edit' do
  @note  = Note.where(title: params[:title]).first

  erb :edit
end

put '/notes/:id' do 
  

end

delete '/notes/:id' do 

end
