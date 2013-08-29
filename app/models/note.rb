class Note < ActiveRecord::Base
 
  def self.display_notes
    self.all.map do |note|
      [note.title, note.content]
    end
  end



end
