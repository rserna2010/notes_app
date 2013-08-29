class Note < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true


  def self.display_notes
    self.all.map do |note|
      [note.title, note.content]
    end
  end



end
