get '/' do
  # Look in app/views/index.erb
  @notes_list = Note.display_notes
  erb :index
end


post '/note' do 
  new_note = Note.create({
    title:    params[:title],
    content:  params[:content]
    })

  redirect to '/'
end 

get '/note/:title' do 
  @note  = Note.where(title: params[:title]).first

  erb :note_page
end

get '/edit/:title' do
  @note  = Note.where(title: params[:title]).first

  erb :edit
end

post '/note:update' do
  
end
