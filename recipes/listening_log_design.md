# Listening Log Class Design Recipe

## 1. Describe the problem

> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.

## 2. Design the class interface

```ruby

class MusicLog
  def initialize
    # ...
  end

  def add_track(artist, title) # artist and title are strings
    # Stores track details and timestamp listened_at
    # Returns nothing
  end

  def list
    # Returns a list of artist+title pairs representing tracks played, most recent first
  end
end

```

## 3. Examples of tests

```ruby

# 1

music_log = MusicLog.new
music_log.list # => []

# 2

music_log = MusicLog.new
music_log.add_track("GUNSHIP", "Tech Noir")
music_log.add_track("Starcadian", "Ultralove")
music_log.list # => [["Starcadian", "Ultralove"], ["GUNSHIP", "Tech Noir"]]

```
