input = "/home/parallels/Desktop/radio/numb.mp3"

# The output file
output = "/home/parallels/Desktop/radio/numb.ogg"

# A source that plays the file once
source = once(single(input))

# We use a clock with disabled synchronization
clock.assign_new(sync=false,[source])

# Finally, we output the source to an
# ogg/vorbis file
output.file(%vorbis, output,fallible=true,
                     on_stop=shutdown,source)
