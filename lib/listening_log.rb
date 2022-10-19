class MusicLog
  def initialize
    @listening_log = []
  end

  def add_track(artist, title) # artist and title are strings
    # Stores track details and timestamp listened_at
    # Returns nothing
    @listening_log << {artist: artist, title: title, listened_at: Time.now()}
  end

  def list
    # Returns a list of strings representing tracks played, most recent first
    tracks = []
    @listening_log.sort_by { |track| track[:listened_at] }.reverse.each do |track|
      tracks << "#{track[:artist]} - #{track[:title]}"
    end
    return tracks
  end
end
