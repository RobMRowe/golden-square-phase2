require 'diary'

RSpec.describe DiaryEntry do
  it do
    diary = DiaryEntry.new('First Entry', 'I started a diary!')
    expect(diary.title).to.eq 'First Entry'
    expect(diary.contents).to.eq 'I started a diary!'
    expect(diary.count_words).to.eq 4
    expect(diary.reading_time(2)).to.eq 2
    expect(diary.reading_time(200)).to.eq 1
    expect(diary.reading_chunk(2, 1)).to.eq 'I started'
    expect(diary.reading_chunk(2, 1)).to.eq 'a diary!'
    expect(diary.reading_chunk(2, 1)).to.eq 'I started'
  end
end
