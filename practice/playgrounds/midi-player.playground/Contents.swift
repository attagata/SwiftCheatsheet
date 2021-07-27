import PlaygroundSupport
import AudioToolbox

var sequence : MusicSequence? = nil
var musicSequence = NewMusicSequence(&sequence)

var track : MusicTrack? = nil
var musicTrack = MusicSequenceNewTrack(sequence!, &track)

// Adding notes

var time = MusicTimeStamp(5.0)
//let arrayNotesLow: Array<UInt8> = [36,28,40,41,43,45,47,48]
let arrayNotesMiddle: Array<UInt8> = [60,62,64,65,67,69,71,72]
let arrayNotesHigh: Array<UInt8> = [72,74,76,77,79,81,83,84]

//for index:UInt8 in arrayNotesLow { // C4 to C5
//    var note = MIDINoteMessage(channel: 0,
//                               note: index,
//                               velocity: 64,
//                               releaseVelocity: 0,
//                               duration: 1.0 )
//    musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
//    time += 1
//}

for index:UInt8 in arrayNotesMiddle { // C4 to C5
    var note = MIDINoteMessage(channel: 0,
                               note: index,
                               velocity: 64,
                               releaseVelocity: 0,
                               duration: 1.0 )
    musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
    time += 1
}

for index:UInt8 in arrayNotesHigh { // C4 to C5
    var note = MIDINoteMessage(channel: 0,
                               note: index,
                               velocity: 64,
                               releaseVelocity: 0,
                               duration: 1.0 )
    musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
    time += 1
}

// Creating a player

var musicPlayer : MusicPlayer? = nil
var player = NewMusicPlayer(&musicPlayer)

player = MusicPlayerSetSequence(musicPlayer!, sequence)
player = MusicPlayerStart(musicPlayer!)

PlaygroundPage.current.needsIndefiniteExecution = true
