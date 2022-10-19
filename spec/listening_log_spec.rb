require 'listening_log'

RSpec.describe MusicLog do
  it do
    music_log = MusicLog.new
    expect(music_log.list).to eq []
    music_log.add_track("GUNSHIP", "Tech Noir")
    music_log.add_track("Starcadian", "Ultralove")
    expect(music_log.list).to eq [["Starcadian", "Ultralove"], ["GUNSHIP", "Tech Noir"]]
  end
end
