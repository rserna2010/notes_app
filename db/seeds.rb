require "faker"


100.times {Note.create(
  title:    Faker::Lorem.word,
  content:  Faker::Lorem.paragraph(sentence_count = 2)
  )}
